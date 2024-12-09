local M = {}

M.setup = function()
  local is_installed, conform = pcall(require, 'conform')
  if not is_installed then return end

  conform.setup({
    formatters_by_fy = {
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescriptreact = { 'prettier' },
      css = { 'prettier' },
      html = { 'prettier' },
      markdown = { 'prettier' },
      json = { 'prettier' },
      lua = { 'stylua' }
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000
    }
  })

  vim.keymap.set({ 'n', 'v' }, '<C-S-f>', function()
    conform.format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000
    })
  end, { noremap = true, silent = true })
end

return M
