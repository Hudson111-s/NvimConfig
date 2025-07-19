# NvimConfig
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Neovim](https://img.shields.io/badge/Neovim-latest-57A143?logo=neovim&logoColor=white)](https://github.com/neovim/neovim)


This is my personal Neovim configuration.

It uses [lazy.nvim](https://github.com/folke/lazy.nvim) and [mason.nvim](https://github.com/mason-org/mason.nvim) for plugin and tool management.


## Prerequisites

- [Node.js](https://nodejs.org/) (for some LSP servers and plugins)
- **Python3** with virtual environment support (for pyright and Python LSP features)
- **Git** (for plugin management with lazy.nvim)
- **ripgrep** (for telescope's live grep)

Make sure these are installed before using this config for the best experience.


## Features

- **Plugin manager:** `lazy.nvim`
- **LSP support** via `mason.nvim` and `nvim-lspconfig`
- **Autocompletion** with `nvim-cmp` and `cmp-nvim-lsp`
- **Snippets** with `LuaSnip` and `friendly-snippets`
- **Syntax highlighting:** `nvim-treesitter`
- **File search:** `telescope.nvim`
- **Git support:** `vim-fugitive` and `gitsigns.nvim`
- **File explorer:** `neo-tree.nvim`
- **Formatter/linter integration:** `none-ls.nvim`
- **Theme:** `catppuccin` (frappe)


## ⚙️ Setup and Installation

Clone this repo into your Neovim config directory:

```bash
git clone git@github.com:Hudson111-s/NvimConfig.git ~/.config/nvim
```

Then, open Neovim to trigger the installation.


---


> [!NOTE]
> - Optional terminal font for icons: [JetBrainsMono Nerd Font Mono](https://www.nerdfonts.com/font-downloads)
> - Compatible with WSL and Linux-based systems
> - Config is modular and organized under `lua/` for easy management
