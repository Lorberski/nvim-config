local lspconfig = require('lspconfig')

-- Minimal-Konfiguration, sonst scheitert Mason-lspconfig oft:
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
