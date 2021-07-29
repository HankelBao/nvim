local wk = require("which-key")
wk.register({
    ["<space><tab>"] = {"<cmd>bprevious<cr>", "last buffer"},
    ["<space>j"] = { name = "+jump" },
    ["<space>m"] = { name = "+language" },
    ["<space>t"] = { name = "+toggle" },
})
