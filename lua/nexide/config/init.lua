local nexide = require('nexide.config.nexide')
local settings = require('nexide.config.settings')
local theme = require('nexide.utils.theme')

local M = {}

M.load = function()
  vim.g.nexide = nexide
  vim.g.mapleader = nexide.mapleader

  for key, value in pairs(settings) do
    vim.opt[key] = value
  end

  vim.scriptencoding = 'utf-8'
  vim.opt.path:append { '**' }
  vim.opt.wildignore:append { '*/node_modules/*' }

  if vim.fn.exists('syntax_on') == 0 then
    -- Enabled syntax
    vim.cmd [[syntax on]]
  end

  -- Undercurl Enabled
  vim.cmd [[let &t_Cs = "\e[4:3m"]]
  vim.cmd [[let &t_Ce = "\e[4:0m"]]

  -- Turn off paste mode when leaving insert
  vim.api.nvim_create_autocmd('InsertLeave', {
    pattern = '*',
    command = 'set nopaste'
  })

  vim.opt.formatoptions:append { 'r' }

  -- Set theme automatically
  theme.set_theme()
  theme.update_theme()
  theme.start_theme_check(5000) -- Every 5s
end

return M
