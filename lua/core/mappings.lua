vim.cmd[[
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
highlight Sneak guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=underline gui=underline,italic,bold
]]

vim.cmd[[
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect
]]
