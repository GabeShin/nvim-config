vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>j", "<C-d>zz")
vim.keymap.set("n", "<leader>k", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste while keeping the original
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clip board
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>h", "<C-6>")
vim.keymap.set("n", "<leader>l", "<C-^>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("w")
end)

-- pane navigation
local opts = { silent = true }

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<C-w>%", ":vsplit<CR>", opts)
vim.keymap.set("n", '<C-w>"', ":split<CR>", opts)
vim.keymap.set("n", "<C-w>X", ":close<CR>", opts)
