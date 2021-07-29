local wk = require("which-key")
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
