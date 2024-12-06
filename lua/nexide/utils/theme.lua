local timer = nil
local M = {}

M.get_system_theme = function()
  local handle = io.popen('defaults read -g AppleInterfaceStyle 2>/dev/null')
  if handle then
    local result = handle:read("*a")
    handle:close()
    if result:match("Dark") then
      return "dark"
    end
  end

  return "light"
end

M.apply_colorscheme = function()
  if vim.g.nexide.theme.mode == 'system' then
    if vim.opt.background:get() ~= M.get_system_theme() then
      vim.opt.background = M.get_system_theme()
    end
  end

  if vim.g.nexide.theme.mode ~= 'system' then
    vim.opt.background = vim.g.nexide.theme.mode
  end

  vim.cmd("syntax enable")
end

M.update_theme = function()
  M.apply_colorscheme()
end

M.set_theme = function ()
  local current_theme = vim.g.nexide.theme.name

  local theme_path = 'nexide.themes.'..current_theme
  local exists_theme, theme = pcall(require, theme_path)
  if not exists_theme then
    vim.cmd.colorscheme(current_theme)
    return
  end

  theme.pre_load()
  vim.cmd.colorscheme(current_theme)
  theme.post_load()

end

M.start_theme_check = function(interval)
  if timer then
    timer:stop()
    timer:close()
    timer = nil
  end

  if vim.g.nexide.theme.mode == "system" then
    timer = vim.loop.new_timer()
    timer:start(0, interval, vim.schedule_wrap(function()
      M.apply_colorscheme()
    end))
  end
end


return M
