local paq = require'paq-nvim'.paq

-- Continuous Shifting
vim.cmd([[
	xnoremap > >gv
	xnoremap < <gv
]])

-- EditorConfig
paq 'editorconfig/editorconfig-vim'

-- Sneak
paq 'ggandor/lightspeed.nvim'

-- Registers
paq 'gennaro-tedesco/nvim-peekup'

-- Match Up
paq 'andymass/vim-matchup'
