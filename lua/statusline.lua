local paq = require'paq-nvim'.paq

paq 'hoob3rt/lualine.nvim'
paq 'kyazdani42/nvim-web-devicons'
paq 'ryanoasis/vim-devicons'

require('lualine').setup{
	options = {
		theme = 'onedark',
		section_separators = {'', ''},
		component_separators = {'', ''}
	}
}
