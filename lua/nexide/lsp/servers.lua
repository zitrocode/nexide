local M = {}

M.setup = function(lspconfig, capabilities)
  local is_installed, mason_lsp = pcall(require, 'mason-lspconfig')
  if not is_installed then return end

  mason_lsp.setup_handlers({
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities
      })
    end,
    ['lua_ls'] = function()
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { 'vim' } },
            completion = { callSnippet = 'Replace' },
            workspace = {
              library = vim.api.nvim_get_runtime_file('', true),
              checkThirdParty = false
            }
          },
        }
      })
    end
  })
end

return M
