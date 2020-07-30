-- Treesitter
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,                    -- false will disable the whole extension
    },
    incremental_selection = {
        enable = true,
        keymaps = {                       -- mappings for incremental selection (visual mappings)
          init_selection = '<leader>s<space>',         -- maps in normal mode to init the node/scope selection
          node_incremental = "<leader>s+",       -- increment to the upper named parent
          scope_incremental = "<leader>s-",      -- increment to the upper scope (as defined in locals.scm)
          node_decremental = "<leader>ss",       -- decrement to the previous node
        }
    },
    refactor = {
      highlight_defintions = {
        enable = true
      },
      smart_rename = {
        enable = true,
        smart_rename = "grr"              -- mapping to rename reference under cursor
      },
      navigation = {
        enable = true,
        goto_definition = "gnd",          -- mapping to go to definition of symbol under cursor
        list_definitions = "gnD"          -- mapping to list all definitions in current file
      }
    },
    ensure_installed = 'all' -- one of 'all', 'language', or a list of languages
}

-- NVim LSP
local nvim_lsp = require'nvim_lsp'
nvim_lsp.clangd.setup{}
nvim_lsp.pyls.setup{}
nvim_lsp.vimls.setup{}
nvim_lsp.sumneko_lua.setup{
    cmd = {"/home/hankel/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server/bin/Linux/lua-language-server"};
}
nvim_lsp.rls.setup{}
-- cmd = {  "-E", "/home/hankel/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server/main.lua" },
