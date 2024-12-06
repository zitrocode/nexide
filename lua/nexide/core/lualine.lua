local is_installed, lualine = pcall(require, 'lualine')
if not is_installed then return end

lualine.setup({
  options = {
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {{
      'branch',
      icons_enabled = false
    }},
    lualine_c = {{
      'filename',
      file_status = true,
      path = 0
    }},
    lualine_x = {{
      'diagnostics',
      source = {
        'nvim_diagnostic',
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = '󰌵 '
        }
      }
    }},
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true,
      path = 1
    }},
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
})
