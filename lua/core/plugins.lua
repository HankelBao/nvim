vim.cmd [[packadd packer.nvim]]
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require('packer').startup(function()
    -- Package Management
    use {'wbthomason/packer.nvim', opt = true}

    -- Language Specific
	use {'xuhdev/vim-latex-live-preview', opt=true} use {'iamcco/markdown-preview.nvim', opt=true}

    -- Treesitter & Highlight
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter'},
            { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
            { 'romgrk/nvim-treesitter-context', after = 'nvim-treesitter' }
        },
        config = function() require("config/treesitter") end,
        event = 'VimEnter *'
    }

    -- LSP & Completion
    use {
        'nvim-lua/completion-nvim',
        requires = {
            'nvim-lua/lsp-status.nvim',
            'neovim/nvim-lspconfig',
            'hrsh7th/vim-vsnip',
            'hrsh7th/vim-vsnip-integ',
            'microsoft/vscode-python',
            'microsoft/vscode-cpptools',
            'tjdevries/nlua.nvim'
        },
        config = function() require("lang.lsp") end,
        event = 'VimEnter *'
    }

    -- Debug
    use 'puremourning/vimspector'
    use {
        'mfussenegger/nvim-dap',
        config = function() require("config.dap") end,
        event = 'VimEnter *'
    }

    -- Editor Basics
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
    use 'wfxr/minimap.vim'
    use 'romainl/vim-cool'
    use {'editorconfig/editorconfig-vim', 'airblade/vim-rooter'}
    use 'psliwka/vim-smoothie'
    use {
        'dhruvasagar/vim-prosession',
        after = 'vim-obsession',
        requires = {{'tpope/vim-obsession', cmd = 'Prosession'}}
    }
    use {
        'liuchengxu/vim-which-key',
        config = function() require'config.leader' end
    }
    use {
        'akinsho/nvim-toggleterm.lua',
        config = function() require'config.toggleterm' end
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use {
        'akinsho/nvim-bufferline.lua',
        config = function() require'config.bufferline' end
    }
    use {
       'glepnir/galaxyline.nvim',
       config = function() require'config.galaxyline' end
    }

    -- Theme
    use {
        'kyazdani42/blue-moon',
        'sainnhe/gruvbox-material',
        'bluz71/vim-nightfly-guicolors',
        'bluz71/vim-moonfly-colors',
        'christianchiarulli/nvcode-color-schemes.vim'
    }

    -- Editing
    use 'justinmk/vim-sneak'
    use 'machakann/vim-sandwich'

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function() require'config.gitsigns' end
    }

end)
