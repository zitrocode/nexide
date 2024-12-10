local M = {}

M.setup = function()
  local is_installed, lint = pcall(require, 'lint')
  if not is_installed then return end

  lint.linters_by_ft = {
    javascript = { 'eslint_d' },
    typescript = { 'eslint_d' },
    javascriptreact = { 'eslint_d' },
    typescriptreact = { 'eslint_d' }
  }

  local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
  vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
    group = lint_augroup,
    callback = function()
      lint.try_lint()
    end
  })

  vim.keymap.set('n', '<C-S-l>', function()
    lint.try_lint()
  end, { noremap = true, silent = true })
end

return M
