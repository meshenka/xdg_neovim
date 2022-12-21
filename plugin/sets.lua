-- Fix backspace indent
-- vim.o.backspace = {"indent", "eol", "start"}

-- Tabs. May be overridden by autocmd rules
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable hidden buffers
vim.o.hidden = true

-- Searching
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- vim.o.fileformats = {"unix", "dos", "mac"}

vim.o.shell = "/usr/bin/zsh"
vim.cmd([[syntax on]])
vim.o.ruler = true
vim.o.number = true
-- vim.wo.number = true
vim.o.relativenumber = true

vim.o.mousemodel = "popup"
vim.o.guioptions = "egmrti"
vim.o.gfn = "Monospace 10"

vim.o.errorbells = false
vim.o.gcr = "a:blinkon0"
vim.o.scrolloff = 3

-- Status bar: global statusline at the bottom
vim.o.laststatus = 3
vim.o.colorcolumn = "80"

-- Use modeline overrides
vim.o.modeline = true
vim.o.modelines = 10

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- vim.o.wildignore = {"__pycache__"}
-- vim.o.wildignore:append({"*.o", "*~", "*.pyc", "*pycache*"})
vim.o.showmode = false
vim.o.showcmd = true
vim.o.cmdheight = 1 -- Height of the command bar
vim.o.showmatch = true -- show matching brackets when text indicator is over them
vim.o.equalalways = false -- I don't like my windows changing all the time
vim.o.splitright = true -- Prefer windows splitting to the right
vim.o.updatetime = 250 -- Make updates happen faster
vim.wo.signcolumn = "yes"

vim.o.scrolloff = 10 -- Make it so there are always ten lines below my cursor
