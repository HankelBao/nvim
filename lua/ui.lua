local paq = require'paq-nvim'.paq

-- Telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
vim.api.nvim_set_keymap('n', '<C-P>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-B>', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-R>', '<cmd>Telescope oldfiles<cr>', { noremap = true, silent = true })

-- Toggle Terminal
paq 'akinsho/nvim-toggleterm.lua'
require"toggleterm".setup{
    size = 7,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal',
}
--- vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
--- vim.api.nvim_set_keymap('n', '<C-T>', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true })
--- vim.api.nvim_set_keymap('t', '<C-T>', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true })

-- File Drawer
-- paq 'kyazdani42/nvim-web-devicons'
-- paq 'kyazdani42/nvim-tree.lua'
-- vim.api.nvim_set_keymap('n', '<C-D>', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true })

-- Bufferline
paq 'akinsho/nvim-bufferline.lua'
paq 'kyazdani42/nvim-web-devicons'
require'bufferline'.setup{}

-- vim.cmd([[set shortmess=a]])
