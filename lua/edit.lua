local paq = require'paq-nvim'.paq

-- Continuous Shifting
vim.cmd([[
	xnoremap > >gv
	xnoremap < <gv
]])

-- EditorConfig
paq 'editorconfig/editorconfig-vim'

-- Sneak
paq 'justinmk/vim-sneak'
vim.cmd([[
    map f <Plug>Sneak_f
    map F <Plug>Sneak_F
]])
