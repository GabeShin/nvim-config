function MakeBackgroundTransparent()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

vim.cmd("colorscheme kanagawa")
MakeBackgroundTransparent()
