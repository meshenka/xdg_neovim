local map = require("keymap").map

-- Close buffer
map("n", "<leader>c", ":bd<CR>")

map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")
