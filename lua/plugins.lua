require 'paq' {
    -- Essentials
    'nvim-lua/popup.nvim';
    'nvim-lua/plenary.nvim';
    'kyazdani42/nvim-web-devicons';
    "savq/paq-nvim";
    'editorconfig/editorconfig-vim';
 
    'airblade/vim-rooter';
    'tweekmonster/startuptime.vim';
    'jghauser/mkdir.nvim';
    'mhinz/vim-sayonara';

    -- Editing
    'ggandor/lightspeed.nvim';
    'gennaro-tedesco/nvim-peekup';
    'andymass/vim-matchup';

    -- Keymaps
    'folke/which-key.nvim';

    'f-person/git-blame.nvim';

    -- Theme
    'tomasiser/vim-code-dark';
    'navarasu/onedark.nvim';

    -- Treesitter
    'nvim-treesitter/nvim-treesitter';

    -- Cursor
    'edluffy/specs.nvim';

    -- Scroll Effect
    'karb94/neoscroll.nvim';

    -- Hex Colorizer
    'norcalli/nvim-colorizer.lua';

    -- Completion & Lsp
    'hrsh7th/nvim-compe';
    'onsails/lspkind-nvim';
    'ray-x/lsp_signature.nvim';
    'neovim/nvim-lspconfig';
    'simrat39/symbols-outline.nvim';
    'glepnir/lspsaga.nvim';
    'folke/trouble.nvim';
    'hoob3rt/lualine.nvim';
    'nvim-telescope/telescope.nvim';
    'nvim-telescope/telescope-project.nvim';

    'numtostr/FTerm.nvim';

    'kyazdani42/nvim-tree.lua';
    'akinsho/nvim-bufferline.lua';
    'sindrets/diffview.nvim';

    -- Languages
    'chrisbra/csv.vim'
}

require('onedark').setup()
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
}
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

require('neoscroll').setup()
require'colorizer'.setup()
require'lsp_signature'.on_attach()
require'lspconfig'.pylsp.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.rls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.vuels.setup{}
require'lspconfig'.gopls.setup{}
local wk = require("which-key")
wk.register({
    ["<space>m"] = {
         s = {"<cmd>Lspsaga signature_help<cr>", "Signature Help"},
         a = {"<cmd>Lspsaga code_action<cr>", "Actions"},
         k = {"<cmd>Lspsaga hover_doc<cr>", "Hover Doc"},
         r = {"<cmd>Lspsaga rename<cr>", "Rename"},
         d = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"}, e = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
         h = {"<cmd>Lspsaga lsp_finder<cr>", "Lsp Finder"},
    },
})
require("trouble").setup({
    height = 5,
    auto_open = true,
    auto_close = true,
})
require'telescope'.load_extension('project')
require("FTerm").setup()
vim.api.nvim_set_keymap('t', '<C-T>', "<cmd>lua require('FTerm').toggle()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-T>', "<cmd>lua require('FTerm').toggle()<cr>", { noremap = true, silent = true })
vim.g.nvim_tree_follow = 0
vim.g.nvim_tree_width_allow_resize = 1
local wk = require("which-key")
wk.register({
    ["<space>td"] = {"<cmd>NvimTreeToggle<cr>", "File Drawer"}
})
require'bufferline'.setup{}
