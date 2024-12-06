local M = {}

M.setup = function ()
  local is_installed, treesitter = pcall(require, 'nvim-treesitter.configs')
  if not is_installed then return end

  treesitter.setup({
    ensure_installed = {
      'tsx',
      'lua',
      'html',
      'css',
      'json',
      'javascript',
      'typescript',
      'markdown'
    },
    auto_install = true,
    autopairs = {
      enable = true,
    },
    autotag = {
      enable = false,
    },
    endwise = {
      enable = true,
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  })
end

return M
