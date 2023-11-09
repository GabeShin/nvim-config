local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer=bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'tsserver', 'rust_analyzer'},
	handlers = {
		lsp.default_setup,
	}
})

local cmp = require('cmp')
cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(), 
        ["<Tab>"] = cmp.mapping.confirm({ select = true}),
        ["<S-Tab>"] = nil,
    }) 
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  -- go to definition
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  -- show hover information
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  -- search for symbols in the workspace
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  -- open a floating window with diagnostic information
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  -- jump to the next diagnostic (error, warning)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  -- jump to the previous diagnostic (error, warning)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  -- trigger code actions for the current context
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  -- show all references
  vim.keymap.set("n", "<leader>ref", function() vim.lsp.buf.references() end, opts)
  -- rename the symbol across the entire workspace
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  -- show signature help when in insert mode
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

