local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require'lspconfig'.terraformls.setup{
  filetypes = { 'terraform', 'tf' }
}
require'lspconfig'.tflint.setup{
  filetypes = { 'terraform', 'tf' }
}
require'lspconfig'.solargraph.setup {
  flags = {
    debounce_text_changes = 500,
  }
}
