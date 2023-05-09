vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    {
        -- LSP Configuration & Plugins
        "neovim/nvim-lspconfig",
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            { "williamboman/mason.nvim", config = true },
            "williamboman/mason-lspconfig.nvim",
            -- Useful status updates for LSP
            "j-hui/fidget.nvim",
            -- Additional lua configuration, makes nvim stuff amazing
            "folke/neodev.nvim"
        }
    },
    {
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        }
    },
    {
        -- Highlight, edit, and navigate code
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
    },

    -- Git related plugins
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    "lewis6991/gitsigns.nvim",
    { "catppuccin/nvim", as = "catppuccin" },                          -- theme

    "nvim-lualine/lualine.nvim",                                       -- Fancier statusline
    "lukas-reineke/indent-blankline.nvim",                             -- Add indentation guides even on blank lines
    "numToStr/Comment.nvim",                                           -- "gc" to comment visual regions/lines
    "tpope/vim-sleuth",                                                -- Detect tabstop and shiftwidth automatically

    -- Fuzzy Finder (files, lsp, etc)
    {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim"
        }
    },

    -- Fuzzy Finder Algorithm which dependencies local dependencies to be built. Only load if `make` is available
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
            return vim.fn.executable "make" == 1
        end,
    },
    "ryanoasis/vim-devicons",        -- fancy icons
    "editorconfig/editorconfig-vim", -- read projetcs editorconfig

    -- session managment
    {
        "xolox/vim-session",
        dependencies = {"xolox/vim-misc"},
    }
})


vim.cmd.colorscheme "catppuccin"

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
