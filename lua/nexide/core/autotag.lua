local M = {}

M.setup = function ()
  local is_installed, autotag = pcall(require, 'nvim-ts-autotag')
  if not is_installed then return end

  autotag.setup({
    opts = {
      enable_close = true,
      enable_rename = true,
      enable_close_on_slash = false
    }
  })
end

return  M
