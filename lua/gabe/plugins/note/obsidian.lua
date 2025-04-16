return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = false,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		ui = {
			enable = false,
		},
		workspaces = {
			{
				name = "work",
				path = "~/vault/enhance",
			},
		},
		mappings = {
			-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- Toggle check-boxes.
			["<leader>ch"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
			-- Smart action depending on context, either follow link or toggle checkbox.
			["<cr>"] = {
				action = function()
					return require("obsidian").util.smart_action()
				end,
				opts = { buffer = true, expr = true },
			},
		},
		templates = {
			subdir = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},
		daily_notes = {
			folder = "journals",
			date_format = "%Y-W%W",
			aliases = "%Y-W%W",
			templates = "weekly-template.md",
		},
		notes_subdir = "notes",
		new_notes_location = "notes_subdir",
		open_notes_in = "vsplit",
		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},
	},
	config = function(_, opts)
		require("obsidian").setup(opts)

		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>on",
			":ObsidianNewFromTemplate note-template<CR>",
			{ desc = "Create new note from template" }
		)
		keymap.set("n", "<leader>od", ":ObsidianToday<CR>", { desc = "Open daily notes" })
		keymap.set("n", "<leader>ol", ":ObsidianToday -7<CR>", { desc = "Open last week's note" })
		keymap.set("n", "<leader>ot", ":ObsidianTempate<CR>", { desc = "Apply template" })
		keymap.set("n", "<leader>or", ":ObsidianRename<CR>", { desc = "Rename current note" })
		keymap.set(
			"n",
			"<leader>of",
			':Telescope find_files search_dirs={"~/vault/enhance/"}<cr>',
			{ desc = "Find files" }
		)
		keymap.set(
			"n",
			"<leader>og",
			':Telescope live_grep search_dirs={"~/vault/enhance/"}<cr>',
			{ desc = "Grep files" }
		)

		vim.opt_local.conceallevel = 2
	end,
}
