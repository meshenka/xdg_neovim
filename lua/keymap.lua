local M = {}

-- simple set keymap with sensible default options
function M.map(mode, lhs, rhs, opts)
    local set = vim.api.nvim_set_keymap
    local default = {noremap = true}

    if opts == nil then
        opts = default
    end
    set(mode, lhs, rhs, opts)
end

-- set keymap for nvo modes
function M.nvomap(lhs, rhs, opts)
    local map = vim.api.nvim_set_keymap
    local default = {noremap = true}
    if opts == nil then
        opts = default
    end
    map("n", lhs, rhs, opts)
    map("v", lhs, rhs, opts)
    map("o", lhs, rhs, opts)
end

return M
