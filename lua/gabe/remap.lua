vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader><Down>", "<C-d>zz")
vim.keymap.set("n", "<leader><Up>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste while keeping the original
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clip board
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><Left>", "<C-o>")
vim.keymap.set("n", "<leader><Right>", "<C-i>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.lsp.buf.format()
    vim.cmd("w")
end)

-- pane navigation
local opts = { silent = true }

vim.keymap.set("n", "<S-Space>l", "<C-w>l", opts)
vim.keymap.set("n", "<S-Space>h", "<C-w>h", opts)
vim.keymap.set("n", "<S-Space>j", "<C-w>j", opts)
vim.keymap.set("n", "<S-Space>k", "<C-w>k", opts)

vim.keymap.set("n", "<S-Space><Left>", "<C-w>h", opts)
vim.keymap.set("n", "<S-Space><Down>", "<C-w>j", opts)
vim.keymap.set("n", "<S-Space><Up>", "<C-w>k", opts)
vim.keymap.set("n", "<S-Space><Right>", "<C-w>l", opts)

vim.keymap.set("n", "<S-Space>v", ":vsplit<CR>", opts)
vim.keymap.set("n", "<S-Space>s", ":split<CR>", opts)
vim.keymap.set("n", "<S-Space>d", ":close<CR>", opts)
