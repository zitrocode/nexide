function Path_config(name)
  local module = 'nexide.core.' .. name
  return module
end

return {
  -- Themes
  'sainnhe/gruvbox-material',
  'tjdevries/colorbuddy.nvim',

  -- Language Server Protocol (LSP)
  {
    'williamboman/mason.nvim',
    config = function()
      require(Path_config('mason')).setup()
      require(Path_config('conform')).setup()
      require(Path_config('lint')).setup()
    end,
    requires = {
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      'stevearc/conform.nvim',
      'mfussenegger/nvim-lint',
    },
  },

  -- Autocomplete and Snippets
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require(Path_config('cmp')).setup()
      require(Path_config('lspkind')).setup()
    end,
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'onsails/lspkind-nvim',
      'saadparwaiz1/cmp_luasnip'
    },
  },
  'L3MON4D3/LuaSnip',

  -- syntax highlighter
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require(Path_config('treesitter')).setup()
    end
  },

  -- User interface
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require(Path_config('tree')).setup()
    end,
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require(Path_config('lualine'))
    end,
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    config = function()
      require(Path_config('telescope')).setup()
    end,
    requires = {
      'nvim-lua/plenary.nvim',
      { 'nvim-tree/nvim-web-devicons' },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
      },
    },
  },

  -- Workflow tools
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require(Path_config('colorizer')).setup()
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require(Path_config('gitsigns')).setup()
    end
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require(Path_config('autotag')).setup()
    end
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require(Path_config('autopairs')).setup()
    end
  },
  {
    'folke/todo-comments.nvim',
    config = function()
      require(Path_config('comments')).setup()
    end
  },

  'mg979/vim-visual-multi',
  'tpope/vim-commentary',
  'folke/zen-mode.nvim',

  -- Utilities for Documentation
  {
    'iamcco/markdown-preview.nvim',
    run = function()
      vim.fn['mkdp#util#install']()
    end
  }
}
