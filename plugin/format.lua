local group = vim.api.nvim_create_augroup("au_neoformat", {})
vim.api.nvim_create_autocmd(
    {"BufWritePre"},
    {
        pattern = "*",
        callback = function()
            vim.cmd("undojoin")
            vim.cmd("Neoformat")
        end,
        group = group
    }
)
