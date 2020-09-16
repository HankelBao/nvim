let g:vimspector_enable_mappings='HUMAN'
  
call plug#begin('~/.config/vim-plugged')
    Plug 'justinmk/vim-sneak'
    Plug 'chriskempson/base16-vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'hardcoreplayers/spaceline.vim'
    " Use the icon plugin for better behavior
    Plug 'liuchengxu/vim-clap'
    Plug 'liuchengxu/vista.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'dracula/vim'
    Plug 'vigoux/treesitter-context.nvim'
    Plug 'airblade/vim-rooter'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-sleuth'
    Plug 'machakann/vim-sandwich'
    Plug 'ayu-theme/ayu-vim'
    Plug 'rakr/vim-one'
    Plug 'liuchengxu/vim-clap'
    Plug 'voldikss/vim-floaterm'

    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'

    Plug 'nvim-treesitter/nvim-treesitter'

    Plug 'neovim/nvim-lsp'
    Plug 'nvim-lua/completion-nvim'
    " Plug 'nvim-lua/diagnostic-nvim'

    Plug 'puremourning/vimspector'

    Plug 'junegunn/fzf.vim'
call plug#end()

let g:which_key_use_floating_win = 1
let g:rooter_change_directory_for_non_project_files = 'current'

if has('nvim') && !exists('g:fzf_layout')
    autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
        \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif
autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>
let g:fzf_preview_window = 'right:50%'

autocmd BufEnter * lua require'completion'.on_attach()

let g:vista_default_executive = 'nvim_lsp'

let g:diagnostic_enable_virtual_text = 1

let g:fern#renderer = "nerdfont"

let g:vem_tabline_multiwindow_mode = 0
let g:vem_tabline_show=2
