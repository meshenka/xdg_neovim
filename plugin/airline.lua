local g = vim.g

--[[ TODO how to migrate this?
if exists("*fugitive#statusline") then
  set statusline+=%{fugitive#statusline()}
end
]]--
--  vim-airline
g.airline_theme = 'powerlineish'
g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tagbar#enabled'] = 1
g.airline_skip_empty_sections = 1

--  vim-airline
if g.airline_symbols == nil then
  g.airline_symbols = {}
end

if g.airline_powerline_fonts == nil then
  g['airline#extensions#tabline#left_sep'] = ' '
  g['airline#extensions#tabline#left_alt_sep'] = '|'
  g.airline_left_sep          = '▶'
  g.airline_left_alt_sep      = '»'
  g.airline_right_sep         = '◀'
  g.airline_right_alt_sep     = '«'
  g['airline#extensions#branch#prefix']     = '⎇' --"➔, ➥, ⎇
  g['airline#extensions#readonly#symbol']   = '⊘'
  g['airline#extensions#linecolumn#prefix'] = '¶'
  g['airline#extensions#paste#symbol']      = 'ρ'
  g.airline_symbols.linenr    = '␊'
  g.airline_symbols.branch    = '⎇'
  g.airline_symbols.paste     = 'ρ'
  g.airline_symbols.paste     = 'Þ'
  g.airline_symbols.paste     = '∥'
  g.airline_symbols.whitespace = 'Ξ'
else
  g['airline#extensions#tabline#left_sep'] = '▶'
  g['airline#extensions#tabline#left_alt_sep'] = '»'

  -- powerline symbols
  g.airline_left_sep = ''
  g.airline_left_alt_sep = ''
  g.airline_right_sep = ''
  g.airline_right_alt_sep = ''
  g.airline_symbols.branch = '⎇'
  g.airline_symbols.readonly = '⊘'
  g.airline_symbols.linenr = ''
end
