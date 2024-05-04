-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Color Scheme - kanagawa
	use("rebelot/kanagawa.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Harpoon
	use({
		"ThePrimeagen/harpoon",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- Undotree
	use("mbbill/undotree")

	-- Fugitive (Git)
	use("tpope/vim-fugitive")

	-- Git Sign
	use("lewis6991/gitsigns.nvim")

	-- LSP zero
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	use({
		"williamboman/mason.nvim",
		requires = {
			{ "williamboman/mason-lspconfig.nvim" },
			{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
		},
	})

	-- Github Copilot
	use("github/copilot.vim")

	-- Formatter
	use("stevearc/conform.nvim")

	-- Linter
	use("mfussenegger/nvim-lint")

	-- Vim Tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "echasnovski/mini.base16" },
		},
	})

	-- Ollama Integration
	use("David-Kunz/gen.nvim")

	-- Color Preview
	use("norcalli/nvim-colorizer.lua")

	-- Hard time for learning nvim
	use({
		"m4xshen/hardtime.nvim",
		requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	})

	use({ "christoomey/vim-tmux-navigator" })

	use({ "vim-test/vim-test", requires = { "preservim/vimux" } })

	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})

	use({
		"epwalsh/obsidian.nvim",
		tag = "*", -- recommended, use latest release instead of latest commit
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	-- required by obsidian.nvim
	vim.opt.conceallevel = 1

	use({ "cohama/lexima.vim" })
end)
