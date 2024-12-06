local M = {}

M.setup = function()
  local is_installed, mason = pcall(require, 'mason')
  if not is_installed then return end

  local mason_lsp = require('mason-lspconfig')

  mason.setup()
  mason_lsp.setup({
    automatic_installation = true,
    ensure_installed = {
      'ts_ls',
      'html',
      'cssls',
      'pyright',
      'lua_ls',
      'eslint',
      'emmet_ls'
    }
  })
end

return M
