local paq = require'paq-nvim'.paq

-- Continuous Shifting
vim.cmd([[
	xnoremap > >gv
	xnoremap < <gv
]])

-- EditorConfig
paq 'editorconfig/editorconfig-vim'
