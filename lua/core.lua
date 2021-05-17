local paq = require'paq-nvim'.paq

-- Reload Configuration
-- paq 'famiu/nvim-reload'

-- Dashboard
--paq 'glepnir/dashboard-nvim'
--vim.cmd([[
--    let g:dashboard_default_executive ='telescope'
--]])
paq 'folke/which-key.nvim'

local wk = require("which-key")
wk.register({
    ["<space><tab>"] = { "<cmd>Telescope find_files<cr>", "Find File" },
})
