local map = require("keymap").map

-- session management
vim.g.session_directoy = "~/.config/nvim/session"
vim.g.session_autoload = "no"
vim.g.session_directory = "~/.config/nvim/session"
vim.g.session_autoload = "no"
vim.g.session_autosave = "no"
vim.g.session_command_aliases = 1

-- session management
map("n", "<leader>so", ":OpenSession<Space>")
map("n", "<leader>ss", ":SaveSession<Space>")
map("n", "<leader>sd", ":DeleteSession<CR>")
map("n", "<leader>sc", ":CloseSession<CR>")
