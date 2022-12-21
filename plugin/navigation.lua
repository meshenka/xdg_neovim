local map = require("keymap").map
local nvomap = require("keymap").nvomap

--  terminal emulation
map("n", "<leader>sh", ":terminal<CR>", {noremap = true, silent = true})

-- Split
nvomap("<leader>h", ":split<CR>")
nvomap("<leader>v", ":vsplit<CR>")

-- Switching windows
nvomap("<C-j>", "<C-w>j")
nvomap("<C-k>", "<C-w>k")
nvomap("<C-l>", "<C-w>")
nvomap("<C-h>", "<C-w>")

-- Vmap for maintain Visual Mode after shifting > and <
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move visual block
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Search mappings: These will make it so that going to the next one in a
-- search will center on the line it's found in.
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
