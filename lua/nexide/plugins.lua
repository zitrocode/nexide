return {
  'wbthomason/packer.nvim',
  'nvim-lua/plenary.nvim',

  'nvim-tree/nvim-web-devicons',

  'sainnhe/gruvbox-material',
  'folke/tokyonight.nvim',

  'tjdevries/colorbuddy.nvim',

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'WhoIsSethDaniel/mason-tool-installer.nvim',

  'stevearc/conform.nvim',
  'mfussenegger/nvim-lint',

  'hrsh7th/nvim-cmp',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/nvim-cmp',

  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',

  'nvim-treesitter/nvim-treesitter',

  { 'nvim-telescope/telescope.nvim',            branch = '0.1.x' },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },

  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-tree.lua',

  'tpope/vim-commentary',
  'folke/todo-comments.nvim',
  'norcalli/nvim-colorizer.lua',
  'mg979/vim-visual-multi',
  'lewis6991/gitsigns.nvim',
  'windwp/nvim-ts-autotag',
  'windwp/nvim-autopairs',
  'folke/zen-mode.nvim',

  {
    'iamcco/markdown-preview.nvim',
    run = function()
      vim.fn['mkdp#util#install']()
    end
  }
}
