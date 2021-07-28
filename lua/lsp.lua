local paq = require'paq-nvim'.paq
local wk = require("which-key")

-- LSP Configuration
paq 'neovim/nvim-lspconfig'
require'lspconfig'.pylsp.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.rls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.vuels.setup{}

-- Outlines
paq 'simrat39/symbols-outline.nvim'

-- Lsp Saga 
paq 'glepnir/lspsaga.nvim'
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

-- Trouble (Diagnostics)
paq 'folke/trouble.nvim'
paq 'kyazdani42/nvim-web-devicons'
require("trouble").setup({
    height = 5,
    auto_open = true,
    auto_close = true,
})
