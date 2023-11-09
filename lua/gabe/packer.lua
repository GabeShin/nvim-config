-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.4",
		-- or                            , branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	-- Color Scheme - kanagawa
	use "rebelot/kanagawa.nvim"
	vim.cmd("colorscheme kanagawa")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

	-- Harpoon
	use "nvim-lua/plenary.nvim"
	use "ThePrimeagen/harpoon"

	-- Undotree
	use "mbbill/undotree"

	-- Fugitive
	use "tpope/vim-fugitive"

	-- LSP zero
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP 
			{"neovim/nvim-lspconfig"},
			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"L3MON4D3/LuaSnip"},
		}
	}

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	}

    use "github/copilot.vim"
    
    use {
         "SirVer/ultisnips",
         "mlaursen/vim-react-snippets"
    }

end)
