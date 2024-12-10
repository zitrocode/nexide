local timer = nil
local M = {}

-- Check if the theme is installed
M.is_installed = function()
  local theme_name = vim.g.nexide.theme.name
  local theme_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/' .. theme_name
  local theme_path_opt = vim.fn.stdpath('data') .. '/site/pack/packer/opt/' .. theme_name

  return vim.fn.isdirectory(theme_path) == 1 or vim.fn.isdirectory(theme_path_opt) == 1
end

-- Get the system theme (only for macOS)
M.get_system_theme = function()
  local system_name = vim.loop.os_uname().sysname

  if system_name ~= 'Darwin' then
    print('Automatic color mode is currently only supported on macOS')
    return 'light'
  end

  local handle = io.popen('defaults read -g AppleInterfaceStyle 2>/dev/null')
  if handle then
    local result = handle:read("*a")
    handle:close()
    return result:match("Dark") and "dark" or "light"
  end

  return "light"
end

-- Apply the selected colorscheme based on the theme mode
M.apply_colorscheme = function()
  if vim.g.nexide.theme.mode == 'system' then
    local system_theme = M.get_system_theme()
    if vim.opt.background:get() ~= system_theme then
      vim.opt.background = system_theme
    end
  elseif vim.g.nexide.theme.mode ~= 'system' then
    vim.opt.background = vim.g.nexide.theme.mode
  end

  vim.cmd("syntax enable")
end

-- Update the current theme
M.update_theme = function()
  M.apply_colorscheme()
end

-- Set the colorscheme and load the theme configuration if available
M.set_theme = function()
  local current_theme = vim.g.nexide.theme.name
  local theme_config_path = 'nexide.themes.' .. current_theme
  local config_exists, theme = pcall(require, theme_config_path)

  if config_exists then
    theme.pre_load()
  end

  vim.cmd.colorscheme(current_theme)

  if config_exists then
    theme.post_load()
  end
end

-- Start a timer to check for theme changes at a set interval
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
