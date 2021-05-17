local paq = require'paq-nvim'.paq

-- Colorscheme
paq 'glepnir/zephyr-nvim'
require('zephyr')

-- Treesitter
paq 'nvim-treesitter/nvim-treesitter'
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
	},
}

-- Number
vim.cmd([[set number]])
vim.cmd([[set relativenumber]])

-- Cursor move
paq 'edluffy/specs.nvim'
require('specs').setup{ 
    show_jumps  = true,
    min_jump = 10,
    popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 10, -- time increments used for fade/resize effects 
        blend = 10, -- starting blend, between 0-100 (fully transparent)
        width = 10,
        winhl = "PMenu",
        fader = require('specs').linear_fader,
        resizer = require('specs').shrink_resizer
    },
    ignore_filetypes = {},
    ignore_buftypes = {
        nofile = true,
    },
}

-- Scroll
paq 'karb94/neoscroll.nvim'
require('neoscroll').setup()

-- Indent
paq 'glepnir/indent-guides.nvim'
require('indent_guides').setup()
