local paq = require'paq-nvim'.paq

-- Key mapping frameowrk
paq 'folke/which-key.nvim'
local wk = require("which-key")
wk.register({
    ["<space><tab>"] = {"<cmd>bprevious<cr>", "last buffer"},
    ["<space>j"] = { name = "+jump" },
    ["<space>m"] = { name = "+language" },
    ["<space>t"] = { name = "+toggle" },
})

-- Git
paq 'f-person/git-blame.nvim'

-- Rooter
paq 'airblade/vim-rooter'

vim.cmd([[
    set mouse=a
    set inccommand=nosplit
]])

paq 'tweekmonster/startuptime.vim'
