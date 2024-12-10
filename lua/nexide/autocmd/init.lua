local M = {}

M.load = function()
  require('nexide.autocmd.packer')

  local is_exists_lspconfig, _ = pcall(require, 'lspconfig')
  if not is_exists_lspconfig then return end
  require('nexide.autocmd.LspStart')
end

return M
