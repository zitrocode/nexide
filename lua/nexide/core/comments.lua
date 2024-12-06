local M = {}

M.setup = function ()
  local is_installed, comments = pcall(require, 'todo-comments')
  if not is_installed then return end

  comments.setup()
end

return M
