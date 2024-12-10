local M = {}

M.setup = function()
  local is_installed, telescope = pcall(require, 'telescope')
  if not is_installed then return end

  local actions = require('telescope.actions')

  telescope.setup({
    defaults = {
      preview = false,
      wrap_results = true,
      prompt_prefix = ' ',
      sorting_strategy = "ascending",
      layout_stratagy = 'horizontal',
      layout_config = {
        prompt_position = 'top',
      },
      mappings = {
        i = {
          ['<ESC>'] = actions.close,
          ['<C-k>'] = actions.move_selection_previous,
          ['<C-j>'] = actions.move_selection_next,
          ['<C-q>'] = actions.send_to_qflist + actions.open_qflist,
        },
      },
    }
  })

  telescope.load_extension('fzf')

  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
end

return M
