local g = vim.g
local map = require("keymap").map

-- NERDTree configuration
g.NERDTreeChDirMode = 2
g.NERDTreeIgnore = {".rbc$", "~$", ".pyc$", ".db$", ".sqlite$", "__pycache__"}
g.NERDTreeSortOrder = {"^__.py$", "/$", "*", ".swp$", ".bak$", "~$"}
g.NERDTreeShowBookmarks = 1
g.nerdtree_tabs_focus_on_files = 1
g.NERDTreeMapOpenInTabSilent = "<RightMouse>"
g.NERDTreeWinSize = 50
g.NERDTreeWinPos = "right"

local opt = vim.opt
opt.wildignore:append({"*/tmp/*", "*.so", "*.swp", "*.zip", "*.pyc", "*.db", "*.sqlite"})
map("n", "<F2>", ":NERDTreeFind<CR>", {noremap = true, silent = true})
map("n", "<F3>", ":NERDTreeToggle<CR>", {noremap = true, silent = true})

-- Tagbar
-- map('n', '<F4>',  ':TagbarToggle<CR>', { noremap = true, silent = true})
-- g.tagbar_autofocus = 1
