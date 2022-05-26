local map = require("keymap").map
local nvomap = require("keymap").nvomap

--  grep.vim
map('n', '<leader>f', ':Rg<CR>', {noremap = true, silent = true})
--  terminal emulation
map('n', '<leader>sh', ':terminal<CR>', {noremap = true, silent = true})

-- Split
nvomap('<leader>h', ':split<CR>')
nvomap('<leader>v', ':vsplit<CR>')

map('n', '<leader>e', ':FZF -m<CR>' , {noremap = true, silent = true})

-- Recovery commands from history through FZF
map('n', '<leader>y', ':History<CR>')

-- Switching windows
nvomap('<C-j>', '<C-w>j')
nvomap('<C-k>', '<C-w>k')
nvomap('<C-l>', '<C-w>')
nvomap('<C-h>', '<C-w>')

-- Vmap for maintain Visual Mode after shifting > and <
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Move visual block
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'<-2<CR>gv=gv')

-- Using lua function
-- Find files using Telescope command-line sugar.
map('n', '<C-p>', "<cmd>lua require('telescope.builtin').find_files()<cr>")
map('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers()<cr>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Search mappings: These will make it so that going to the next one in a
-- search will center on the line it's found in.
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
