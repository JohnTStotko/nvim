vim.o.tabstop = 2 -- Number of spaces a tab represents
vim.o.shiftwidth = 2 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces

-- LSP config

vim.opt.rtp:append(vim.fn.stdpath("config") .. "/nvim-lspconfig")
vim.opt.rtp:append(vim.fn.stdpath("config") .. "/mason.nvim")
vim.opt.rtp:append(vim.fn.stdpath("config") .. "/mason-lspconfig.nvim")

-- Add the same capabilities to ALL server configurations.
-- Refer to :h vim.lsp.config() for more information.
vim.lsp.config("*", {
  capabilities = vim.lsp.protocol.make_client_capabilities()
})

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "basedpyright", "lua_ls" }
}

