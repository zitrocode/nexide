local M = {}

M.enabled_signs = function()
  -- Diagnostic symbols in the sign column (gutter)
  local signs = { Error = ' ', Warn = ' ', Hint = '󰌵 ', Info = '󰋼 ' }
  for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
  end
end

M.configure_display = function()
  -- Change icon prefix
  vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = ' ' },
    severity_sort = true,
  })
end

return M
