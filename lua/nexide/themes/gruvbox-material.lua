local M = {}

M.pre_load = function()
  vim.g.gruvbox_material_better_performance = true
  vim.g.gruvbox_material_foreground = 'original'
  vim.g.gruvbox_material_transparent_background = vim.g.nexide.theme.transparent
  vim.g.gruvbox_material_ui_contrast = 'high'
end

M.post_load = function()
  local is_installed, colorbuddy = pcall(require, 'colorbuddy')
  if not is_installed then return end

  local configuration = vim.fn['gruvbox_material#get_configuration']()
  local palette = vim.fn['gruvbox_material#get_palette'](
    configuration.background,
    configuration.foreground,
    configuration.colors_override
  )
end

return M
