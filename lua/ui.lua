local paq = require'paq-nvim'.paq
local wk = require("which-key")

-- Telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
paq 'nvim-telescope/telescope-project.nvim'
require'telescope'.load_extension('project')

wk.register({
    ["<space>j"] = {
        f = {"<cmd>Telescope find_files<cr>", "Fuzzy File Finder"},
        e = {"<cmd>Telescope file_browser<cr>", "File Browser"},
        g = {"<cmd>Telescope live_grep<cr>", "Ripgrep"},
        o = {"<cmd>Telescope treesitter<cr>", "Treesitter Symbols"},
        l = {"<cmd>Telescope current_buffer_fuzzy_find<cr>", "Fuzzy Line (current buffer)"},
        b = {"<cmd>Telescope buffers<cr>", "Switch Buffer"},
        h = {"<cmd>Telescope oldfiles<cr>", "File History"},
        d = {"<cmd>Telescope lsp_definitions<cr>", "Lsp Definitions"},
        r = {"<cmd>Telescope lsp_references<cr>", "Lsp References"}
    }
})

-- Toggle Terminal
-- paq 'akinsho/nvim-toggleterm.lua'
-- require"toggleterm".setup{
--     -- size = 7,
--     open_mapping = [[<c-\>]],
--     shade_filetypes = {},
--     shade_terminals = true,
--     start_in_insert = true,
--     persist_size = false,
--     direction = 'horizontal',
-- }
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])

paq 'numtostr/FTerm.nvim'
paq 'voldikss/vim-floaterm'
require("FTerm").setup()
vim.api.nvim_set_keymap('t', '<C-T>', "<cmd>lua require('FTerm').toggle()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-T>', "<cmd>lua require('FTerm').toggle()<cr>", { noremap = true, silent = true })

-- File Drawer

-- Below is unsupported shit, don't use it.
paq 'kyazdani42/nvim-web-devicons'
paq 'kyazdani42/nvim-tree.lua'
vim.g.nvim_tree_follow = 0
vim.g.nvim_tree_width_allow_resize = 1
wk.register({
    ["<space>td"] = {"<cmd>NvimTreeToggle<cr>", "File Drawer"}
})

-- Bufferline
paq 'akinsho/nvim-bufferline.lua'
paq 'kyazdani42/nvim-web-devicons'
require'bufferline'.setup{}

vim.cmd([[set shortmess=a]])

-- Git
paq 'sindrets/diffview.nvim'
