-- NOTE: Temporary workaround.
-- Automatically starts LSP for ".lua" files if not already active.
-- This is due to an issue with the initialization process for Lua files.

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    local filetype = vim.bo[buf].filetype

    if filetype == "lua" then
      local clients = vim.lsp.get_clients({ bufnr = buf })
      if #clients == 0 then
        vim.cmd("LspStart")
      end
    end
  end,
})
