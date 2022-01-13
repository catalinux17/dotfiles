local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "cata.lsp.lsp-installer"
require("cata.lsp.handlers").setup()
require "cata.lsp.null-ls"
