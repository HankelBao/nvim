require'utils'.setup_packer()
local packer = require'packer'

local function packer_init(use)
    -- Essentials
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'wbthomason/packer.nvim'
    use 'editorconfig/editorconfig-vim'
 
    -- Utils
    use 'airblade/vim-rooter'
    use {'tweekmonster/startuptime.vim', cmd='StartupTime'}
    use {'jghauser/mkdir.nvim', config=[[require('mkdir')]]}
    use {'mhinz/vim-sayonara', cmd='Sayonara'}

    -- Editing
    use 'ggandor/lightspeed.nvim'
    use 'gennaro-tedesco/nvim-peekup'
    use 'andymass/vim-matchup'

    -- Keymaps
    use {
        'folke/which-key.nvim',
        config = [[require('config.which-key')]],
    }

    -- Git
    use 'f-person/git-blame.nvim'

    -- Theme
    use 'tomasiser/vim-code-dark'
    use {
        'navarasu/onedark.nvim',
        config = function() require('onedark').setup() end
    }

    -- Treesitter
    use { 
        'nvim-treesitter/nvim-treesitter',
        config = function() 
            require'nvim-treesitter.configs'.setup {
                highlight = {
                    enable = true,
                },
            }
        end
    }

    -- Cursor
    use {
        'edluffy/specs.nvim',
        config = function()
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
        end
    }

    -- Scroll Effect
    use {
        'karb94/neoscroll.nvim',
        config = function()
            require('neoscroll').setup()
        end
    }

    -- Hex Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require'colorizer'.setup()
        end
    }

    -- Completion & Lsp
    use {
        'hrsh7th/nvim-compe',
        event = 'InsertEnter *',
        config = [[require'config.completion']]
    }
    use {
        'onsails/lspkind-nvim',
        after = 'nvim-compe',
        config = [[require'config.lspkind']]
    }
    use {
        'ray-x/lsp_signature.nvim',
        after = 'nvim-compe',
        config = function()
            require'lsp_signature'.on_attach()
        end
    }
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require'lspconfig'.pylsp.setup{}
            require'lspconfig'.tsserver.setup{}
            require'lspconfig'.clangd.setup{}
            require'lspconfig'.rls.setup{}
            require'lspconfig'.html.setup{}
            require'lspconfig'.vuels.setup{}
        end
    }
    use {
        'simrat39/symbols-outline.nvim',
        after = 'nvim-lspconfig'
    }
    use {
        'glepnir/lspsaga.nvim',
        config = function() 
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
        end,
        after = {'which-key.nvim', 'nvim-lspconfig'}
    }
    use {
        'folke/trouble.nvim',
        after = {'nvim-lspconfig', 'nvim-web-devicons'},
        config = function()
            require("trouble").setup({
                height = 5,
                auto_open = true,
                auto_close = true,
            })
        end
    }

    use {
        'hoob3rt/lualine.nvim',
        after = 'which-key.nvim',
        config = [[require('config.lualine')]]
    }

    use {
        'nvim-telescope/telescope.nvim',
        after = 'which-key.nvim',
        config = [[require('config.telescope')]]
    }
    use {
        'nvim-telescope/telescope-project.nvim',
        after = 'telescope.nvim',
        config = function()
            require'telescope'.load_extension('project')
        end
    }

    use {
        'numtostr/FTerm.nvim',
        config = function()
            require("FTerm").setup()
            vim.api.nvim_set_keymap('t', '<C-T>', "<cmd>lua require('FTerm').toggle()<cr>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<C-T>', "<cmd>lua require('FTerm').toggle()<cr>", { noremap = true, silent = true })
        end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        after = {'nvim-web-devicons', 'which-key.nvim'},
        config = function()
            vim.g.nvim_tree_follow = 0
            vim.g.nvim_tree_width_allow_resize = 1
            local wk = require("which-key")
            wk.register({
                ["<space>td"] = {"<cmd>NvimTreeToggle<cr>", "File Drawer"}
            })
        end
    }

    use {
        'akinsho/nvim-bufferline.lua',
        config = function()
            require'bufferline'.setup{}
        end
    }

    use 'sindrets/diffview.nvim'
end

vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
return packer.startup(packer_init)
