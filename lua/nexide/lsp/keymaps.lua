local M = {}

M.setup = function(bufnr)
  local keymap = vim.keymap
  local opts = { buffer = bufnr, silent = true }

  -- Lista de mapeos
  local mappings = {
    { mode = 'n', lhs = 'gR', rhs = vim.lsp.buf.references, desc = 'Show LSP references' },
    { mode = 'n', lhs = 'gD', rhs = vim.lsp.buf.declaration, desc = 'Go to declaration' },
    { mode = 'n', lhs = 'gd', rhs = vim.lsp.buf.definition, desc = 'Go to definition' },
    { mode = 'n', lhs = 'gi', rhs = vim.lsp.buf.implementation, desc = 'Go to implementation' },
    { mode = 'n', lhs = 'gt', rhs = vim.lsp.buf.type_definition, desc = 'Go to type definition' },
    { mode = { 'n', 'v' }, lhs = '<space>ca', rhs = vim.lsp.buf.code_action, desc = 'Code action' },
    { mode = 'n', lhs = '<leader>rn', rhs = vim.lsp.buf.rename, desc = 'Rename symbol' },
    { mode = 'n', lhs = '<leader>d', rhs = vim.diagnostic.open_float, desc = 'Open diagnostic float' },
    { mode = 'n', lhs = '[d', rhs = vim.diagnostic.goto_prev, desc = 'Go to previous diagnostic' },
    { mode = 'n', lhs = ']d', rhs = vim.diagnostic.goto_next, desc = 'Go to next diagnostic' },
    { mode = 'n', lhs = 'K', rhs = vim.lsp.buf.hover, desc = 'Hover documentation' }
  }

  for _, map in ipairs(mappings) do
    opts.desc = map.desc
    keymap.set(map.mode, map.lhs, map.rhs, opts)
  end
end

return M
