-- Tree Sitter
local treesitter_config = require 'nvim-treesitter.configs'
treesitter_config.setup {
    highlight = {
        enable = false,                    -- false will disable the whole extension
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

