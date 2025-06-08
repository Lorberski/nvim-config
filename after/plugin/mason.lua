require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd" }, -- automatisch installieren
}

-- Verbindung zu lspconfig herstellen:
local lspconfig = require("lspconfig")

-- Sprachserver einrichten
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
