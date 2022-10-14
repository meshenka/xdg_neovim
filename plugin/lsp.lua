require("lsp")

local map = require("keymap").map

map("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>")
map("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>")
map("n", "<leader>gsh", ":lua vim.lsp.buf.signature_help()<CR>")
map("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>")
map("n", "<leader>grn", ":lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>gh", ":lua vim.lsp.buf.hover()<CR>")
map("n", "<leader>gca", ":lua vim.lsp.buf.code_action()<CR>")
map("n", "<leader>gsd", ":lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>")
map("n", "<leader>gn", ":lua vim.lsp.diagnostic.goto_next()<CR>")
map("n", "<leader>bf", ":lua vim.lsp.buf.format( { async = true })<CR>")
map("n", "<leader>fm", ":lua vim.lsp.buf.format({ async = true })<CR>", {noremap = true, silent = true})
