local paq = require'paq-nvim'.paq

paq 'hoob3rt/lualine.nvim'
paq 'kyazdani42/nvim-web-devicons'
paq 'ryanoasis/vim-devicons'

require('lualine').setup {
	options = {
		theme = 'onedark',
		icons_enabled = false,
		section_separators = '',
		component_separators = '',
		disabled_filetypes = {}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'location'},
		lualine_z = { {'diagnostics', sources = {'nvim_lsp'}}},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}
