vim.cmd [[packadd packer.nvim]]
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require('packer').startup(function()
    -- Package Management
    use {'wbthomason/packer.nvim', opt = true}

    -- Language
	use {'xuhdev/vim-latex-live-preview', opt=true}
    use {'iamcco/markdown-preview.nvim', opt=true}

    -- Treesitter & Lsp
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    use 'nvim-lua/diagnostic-nvim'

    -- Debug
    use 'puremourning/vimspector'

    -- Picker
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}

    -- Editorconfig
    use 'editorconfig/editorconfig-vim'
    use 'airblade/vim-rooter'

    -- Colorscheme & Beautify
    use {'kyazdani42/blue-moon', opt=true}
    use {'sainnhe/gruvbox-material', opt=true}
    use 'ryanoasis/vim-devicons'
    use 'psliwka/vim-smoothie'

    -- Speed Editing & Moving
    use 'justinmk/vim-sneak'
    use 'machakann/vim-sandwich'

    -- Utils
    use 'airblade/vim-gitgutter'
    use 'voldikss/vim-floaterm'
    use 'liuchengxu/vim-which-key'

end)
