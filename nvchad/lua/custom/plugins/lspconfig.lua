-- local servers = { "html", "cssls", "tsserver", "clangd", "ruff_lsp", "pyright" }
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "svelte", "pyright", "gopls", "rust_analyzer" }
-- local servers = { "html", "cssls", "tsserver", "clangd", "ruff_lsp", "pyright" }
-- local lspconfig = require "lspconfig"

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
