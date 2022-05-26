require'lspconfig'.gopls.setup{
  on_attach = on_attach,
  settings = {
    gopls =  {
      env = {GOFLAGS="-tags=integration"},
      buildFlags = {"-tags=integration"}
    }
  }
}
--require'lspconfig'.phpactor.setup{}
--require'lspconfig'.eslint.setup{}
-- require'lspconfig'.sqlls.setup{}
-- require'lspconfig'.sumneko_lua.setup{}

--
-- LSP CONFIG
--
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- local servers = { 'gopls', 'phpactor', 'eslint', 'sumneko_lua'}
local servers = {'gopls'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    }
  }
end

local lspkind = require('lspkind')
  -- Setup  lspkind
  lspkind.init({
     mode = 'symbol_text',
  })

-- Setup nvim-cmp.
local cmp = require'cmp'
cmp.setup({
snippet = {
  expand = function(args)
    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
  end,
},
mapping = {
  ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
  ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
  ['<C-e>'] = cmp.mapping({
    i = cmp.mapping.abort(),
    c = cmp.mapping.close(),
  }),
  -- Accept currently selected item. If none selected, `select` first item.
  -- Set `select` to `false` to only confirm explicitly selected items.
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
},
sources = cmp.config.sources({
  { name = 'buffer', keyword_length = 5 },
  { name = 'nvim_lsp' },
  { name = 'luasnip' }, -- For luasnip users.
}),
formatting = {
  format = lspkind.cmp_format({
    with_text = true,
    maxwidth = 50,
    menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        path = "[path]",
    })
  }),
},
experimental = {
    native_menu = false,
    ghost_text = true,
},
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
sources = {
  { name = 'buffer' }
}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
sources = cmp.config.sources({
  { name = 'path' }
}, {
  { name = 'cmdline' }
})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities
  }
end
