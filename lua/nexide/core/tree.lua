local M = {}

M.setup = function ()
  local is_installed, tree = pcall(require, 'nvim-tree')
  if not is_installed then return end

  vim.g.loaded_netwr = 1
  vim.g.loaded_netwrPlugin = 1

  tree.setup({
    view = {
      width = 30
    },
    filters = {
      dotfiles = true
    }
  })
end

return M
