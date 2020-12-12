require"toggleterm".setup{
    size = 6,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    persist_size = true,
    direction = 'horizontal'
}

vim.cmd[[tnoremap <Esc> <C-\><C-n>]]

vim.cmd[[
au TermOpen * setlocal listchars= nonumber norelativenumber
]]
