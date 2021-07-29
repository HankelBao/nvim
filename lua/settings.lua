vim.cmd([[
    set mouse=a
    set inccommand=nosplit
    set termguicolors
]])

vim.cmd([[
	xnoremap > >gv
	xnoremap < <gv
]])

vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
