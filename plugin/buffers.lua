local map = require("keymap").map

-- Buffer nav
map('n', '<leader>z', ':bp<CR>')
map('n', '<leader>q', ':bp<CR>')
map('n', '<leader>x', ':bn<CR>')
map('n', '<leader>w', ':bn<CR>')

-- Close buffer
map('n', '<leader>c', ':bd<CR>')

map('n', '<Tab>', ':bnext<CR>')
map('n', '<S-Tab>', ':bprevious<CR>')

