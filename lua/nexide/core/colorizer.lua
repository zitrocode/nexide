local M = {}

M.setup = function ()
  local is_installed, colorizer = pcall(require, 'colorizer')
  if not is_installed then return end

  colorizer.setup({ '*' })
end

return M
