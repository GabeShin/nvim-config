require("obsidian").setup({
	workspaces = {
		{
			name = "personal",
			path = "/Users/gabe/Library/Mobile Documents/iCloud~md~obsidian/Documents/Gabe Personal",
		},
	},

	notes_subdir = "0-inbox",
	new_notes_location = "notes_subdir",
	open_notes_in = "vsplit",

	templates = {
		subdir = "templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M:%S",
	},

	completion = {
		nvim_cmp = true,
		min_chars = 2,
	},

	daily_notes = {
		folder = "dailies",
		date_format = "%Y-%m-%d",
		alias_format = "%B %-d, %Y",
		template = "daily-template.md",
	},

	mappings = {
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
	note_id_func = function(title)
		return tostring(os.time()) .. "-" .. title
	end,
})

vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
vim.keymap.set("n", "<leader>od", ":ObsidianToday<CR>")
vim.keymap.set(
	"n",
	"<leader>of",
	':Telescope find_files search_dirs={"/Users/gabe/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Gabe\\ Personal"}<cr>'
)
vim.keymap.set(
	"n",
	"<leader>og",
	':Telescope live_grep search_dirs={"/Users/gabe/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Gabe\\ Personal"}<cr>'
)
