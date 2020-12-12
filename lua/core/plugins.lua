vim.cmd [[packadd packer.nvim]]
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require('packer').startup(function()
    -- Package Management
    use {'wbthomason/packer.nvim', opt = true}

    -- Language
	use {'xuhdev/vim-latex-live-preview', opt=true}
    use {'iamcco/markdown-preview.nvim', opt=true}

    -- Treesitter & Lsp
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require'config.treesitter' end
    }
    use 'romgrk/nvim-treesitter-context'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/lsp-status.nvim'
    use 'nvim-lua/completion-nvim'

    -- Debug
    -- use 'puremourning/vimspector'
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    -- use 'mfussenegger/nvim-dap-python'

    -- Picker
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}

    -- Editorconfig
    use 'editorconfig/editorconfig-vim'
    use 'airblade/vim-rooter'

    -- Colorscheme & Beautify
    use {'kyazdani42/blue-moon', opt=true}
    use {'sainnhe/gruvbox-material', opt=true}
    use {'christianchiarulli/nvcode-color-schemes.vim', opt=true}
    use 'ryanoasis/vim-devicons'
    use 'psliwka/vim-smoothie'

    -- Speed Editing & Moving
    use 'justinmk/vim-sneak'
    use 'machakann/vim-sandwich'

    -- Utils
    use 'voldikss/vim-floaterm'
    use {
        'liuchengxu/vim-which-key',
        config = function() require'config.leader' end
    }
    use {
        'akinsho/nvim-toggleterm.lua',
        config = function() require'config.toggleterm' end
    }
    use 'airblade/vim-gitgutter'
    use 'wfxr/minimap.vim'
    use {
       'glepnir/galaxyline.nvim',
       config = function() require'config.galaxyline' end
    }
    -- use {
    --     'lewis6991/gitsigns.nvim',
    --     requires = { 'nvim-lua/plenary.nvim' },
    --     config = function() require'config.gitsigns' end
    -- }

    -- File Explorer
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use {
        'akinsho/nvim-bufferline.lua',
        config = function() require'config.bufferline' end
    }

end)