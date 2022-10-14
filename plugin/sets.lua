local opt = vim.opt
-- Encoding
opt.encoding = "UTF-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "utf-8"

-- Fix backspace indent
opt.backspace = {"indent", "eol", "start"}

-- Tabs. May be overridden by autocmd rules
opt.tabstop = 4
opt.softtabstop = 0
opt.shiftwidth = 4
opt.expandtab = true

-- Enable hidden buffers:
opt.hidden = true

-- " Searching
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.fileformats = {"unix", "dos", "mac"}
 --

--[[
if exists('$SHELL')
    opt.shell=$SHELL
else
    opt.shell=/bin/sh
endif
]] opt.shell = "/usr/bin/zsh"
vim.cmd([[syntax on]])
opt.ruler = true
opt.number = true
opt.relativenumber = true

-- opt.no_buffers_menu = 1
vim.cmd([[colorscheme gruvbox]])
opt.background = "dark"

opt.mousemodel = "popup"
-- opt.t_Co = 256
opt.guioptions = "egmrti"
opt.gfn = "Monospace 10"
 --

--[[
if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    opt.guifont=Menlo:h12
    opt.transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1
endif
]] --  Disable visualbell
-- opt.noerrorbells = {'visualbell', 't_vb='}
opt.errorbells = false
 --

--[[
if has('autocmd') then
  autocmd GUIEnter * opt.visualbell t_vb=
end
]] -- " Disable the blinking cursor.
opt.gcr = "a:blinkon0"
opt.scrolloff = 3

-- " Status bar: global statusline at the bottom
opt.laststatus = 3
opt.colorcolumn = "80"

-- " Use modeline overrides
opt.modeline = true
opt.modelines = 10

opt.title = true
opt.titleold = "Terminal"
opt.titlestring = "%F"

opt.statusline = "%F%m%r%h%w%=(%{&ff}/%Y) (line %l/%L, col %c)"
opt.omnifunc = "syntaxcomplete#Complete"
opt.wildignore = {"__pycache__"}
opt.wildignore:append({"*.o", "*~", "*.pyc", "*pycache*"})
opt.showmode = false
opt.showcmd = true
opt.cmdheight = 1 -- Height of the command bar
opt.showmatch = true -- show matching brackets when text indicator is over them
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ... unless there is a capital letter in the query
opt.equalalways = false -- I don't like my windows changing all the time
opt.splitright = true -- Prefer windows splitting to the right
opt.splitbelow = true -- Prefer windows splitting to the bottom
opt.updatetime = 1000 -- Make updates happen faster
opt.scrolloff = 10 -- Make it so there are always ten lines below my cursor
