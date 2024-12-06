local general = require('nexide.lsp.general')
local keymaps = require('nexide.lsp.keymaps')
local servers = require('nexide.lsp.servers')
local diagnostic = require('nexide.lsp.diagnostic')

local M = {}

M.load = function()
  local lsp = general.setup()
  if not lsp then return end

  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
      keymaps.setup(ev.buf)
    end,
  })

  diagnostic.enabled_signs()
  diagnostic.configure_display()

  servers.setup(lsp.lspconfig, lsp.capabilities)
end

return M
