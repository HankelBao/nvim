local paq = require'paq-nvim'.paq

paq 'glepnir/zephyr-nvim'
paq 'nvim-treesitter/nvim-treesitter'

require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
	},
}
require('zephyr')

vim.cmd([[set number]])
vim.cmd([[set relativenumber]])
