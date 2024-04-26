-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.g.copilot_filetypes = {
	["*"] = false,
	["css"] = true,
	["html"] = true,
	["javascript"] = true,
	["typescript"] = true,
	["javascriptreact"] = true,
	["typescriptreact"] = true,
	["lua"] = false,
	["rust"] = true,
	["c"] = true,
	["c#"] = true,
	["c++"] = true,
	["go"] = true,
	["python"] = true,
}
