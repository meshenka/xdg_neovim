local map = require("keymap").map
-- session management
local g = vim.g
g.session_directory = "~/.config/nvim/session"
g.session_autoload = "no"
g.session_directory = "~/.config/nvim/session"
g.session_autoload = "no"
g.session_autosave = "no"
g.session_command_aliases = 1

local remap = vim.api.nvim_set_keymap
-- session management
map("n", "<leader>so", ":OpenSession<Space>")
map("n", "<leader>ss", ":SaveSession<Space>")
map("n", "<leader>sd", ":DeleteSession<CR>")
map("n", "<leader>sc", ":CloseSession<CR>")
