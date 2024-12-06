
<div align="center">
    <h1>Nexide</h1>
    <p>Your minimalist, powerful, and hassle-free IDE</p>
</div>

## Introduction

Nexide features a configuration designed to make Neovim more accessible and intuitive, especially for users who are just starting out and transitioning from Visual Studio Code.

Nexide’s goal is to provide an **MVP** that works right away and requires minimal effort to get started.
If you’re looking for a Neovim setup that feels familiar, modern, and powerful, Nexide is for you.

## Features

- **Easy Installation**: Get started with a single command.
- **Pre-configured Plugins**: Essential plugins pre-installed and ready to go.
- **Syntax Highlighting**: Powered by Treesitter for accurate and beautiful highlighting.
- **Integrated LSP (Language Server Protocol)**: Out-of-the-box support for autocompletion and diagnostics.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/zitrocode/nexide.git ~/.config/nvim
   ```

2. **Install dependencies**:
   Ensure you have Neovim (>= 0.9) and a package manager like [Packer.nvim](https://github.com/wbthomason/packer.nvim).

3. **Run the setup command**:
   Open Neovim and run:
   ```vim
   :PackerSync
   ```

4. **Enjoy your new Neovim experience!**

## Key Bindings

Here are some of the key mappings included in this configuration:

- **File Explorer**: `Ctrl + Shift + e` opens the file explorer

For the full list of key mappings, check the `keymaps.lua` file in the repository.

## Plugins Included

This configuration comes with the following plugins:

### Core Plugins
- **[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)**: Plugin manager.
- **[nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)**: File icons.

### Themes
- **[sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material)**: Gruvbox theme.
- **[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**: Tokyo Night theme.
- **[tjdevries/colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)**: Color utility.

### Language Server & Autocompletion
- **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Easy LSP configurations.
- **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)**: LSP server installer.
- **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**: Bridge between Mason and LSPConfig.
- **[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Autocompletion engine.
- **[hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)**: LSP completion source.
- **[onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)**: Adds icons to completion items.
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: Snippet engine.
- **[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)**: Snippet completion source.
- **[hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)**: Buffer completion source.

### Syntax Highlighting
- **[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting.

### UI Enhancements
- **[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: Status line.
- **[nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**: File explorer.
- **[norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)**: Color highlighter.

### Productivity Tools
- **[tpope/vim-commentary](https://github.com/tpope/vim-commentary)**: Easy commenting.
- **[folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)**: Highlight and manage TODO comments.
- **[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Auto close pairs.
- **[windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)**: Auto close tags.
- **[mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)**: Multiple cursors.
- **[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git integration.
- **[folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)**: Distraction-free mode.

## Contributing

Contributions are welcome! If you encounter issues or have ideas for improvements, feel free to open an [issue](https://github.com/zitrocode/nexide/issues) or submit a pull request.


## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.
