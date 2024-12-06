local M = {}

M.setup = function ()
  local is_installed, autopairs = pcall(require, 'nvim-autopairs')
  if not is_installed then return end

  autopairs.setup()
end

return M
