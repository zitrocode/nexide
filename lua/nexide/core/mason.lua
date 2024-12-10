local M = {}

M.setup = function()
  local is_installed, mason = pcall(require, 'mason')
  if not is_installed then return end

  local mason_lsp = require('mason-lspconfig')
  local tool_installer = require('mason-tool-installer')

  mason.setup()
  mason_lsp.setup({
    automatic_installation = true,
    ensure_installed = {
      'ts_ls',
      'html',
      'cssls',
      'pyright',
      'lua_ls',
      'emmet_ls'
    }
  })

  tool_installer.setup({
    ensure_installed = {
      'eslint_d',
      'prettier',
      'stylua',
    }
  })
end

return M
