vim.g.mapleader = " "

-- Neovim builtin LSP configuration
-- require "syg.lsp"

-- Telescope BTW
-- require "syg.telescope.setup"
-- require "syg.telescope.mappings"

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- icons font
Plug('ryanoasis/vim-devicons')
Plug('tpope/vim-commentary')

Plug('Yggdroot/indentLine')

-- git
Plug('airblade/vim-gitgutter')
Plug('tpope/vim-fugitive')

-- fzf
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug('junegunn/fzf.vim')

Plug('scrooloose/nerdtree', { on = 'NERDTreeToggle' })

-- lsp
Plug('neovim/nvim-lspconfig')
Plug("nvim-telescope/telescope-fzf-native.nvim", { run = 'make' })
Plug('onsails/lspkind-nvim')

-- telescope
Plug('nvim-lua/popup.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')

-- editorconfig
Plug('editorconfig/editorconfig-vim')

-- autocomplete
Plug("hrsh7th/nvim-cmp")
-- use "hrsh7th/cmp-cmdline"
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-nvim-lua')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('L3MON4D3/LuaSnip')

-- theme
Plug('gruvbox-community/gruvbox')

-- airline
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')

-- session
Plug('xolox/vim-misc')
Plug('xolox/vim-session')

vim.call('plug#end')

