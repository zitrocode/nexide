local M = {}

M.setup = function()
  local is_installed, lspconfig = pcall(require, 'lspconfig')
  if not is_installed then return end

  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  return {
    lspconfig = lspconfig,
    capabilities = capabilities
  }
end

return M
