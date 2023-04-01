-- local servers = { "html", "cssls", "tsserver", "clangd", "ruff_lsp", "pyright" }
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "svelte", "pyright", "gopls", "rust_analyzer", "bashls", "yamlls" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- lspconfig.pyright.setup { blabla}
