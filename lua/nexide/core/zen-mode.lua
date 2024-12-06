local M = {}

M.setup = function ()
  local is_installed, zen_mode = pcall(require, 'zen-mode')
  if not is_installed then return end

  zen_mode.setup()
end

return M
