let g:vimspector_enable_mappings='HUMAN'

call plug#begin('~/.config/vim-plugged')
	Plug 'justinmk/vim-sneak'
	Plug 'chriskempson/base16-vim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-rooter'
    Plug 'ayu-theme/ayu-vim'
    Plug 'rakr/vim-one'

    Plug 'lambdalisue/fern.vim'

    Plug 'nvim-treesitter/nvim-treesitter'

    Plug 'neovim/nvim-lsp'
    Plug 'nvim-lua/completion-nvim'
    " Plug 'nvim-lua/diagnostic-nvim'

    Plug 'puremourning/vimspector'

    Plug 'junegunn/fzf'
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

autocmd BufEnter * lua require'completion'.on_attach()

let g:vista_default_executive = 'nvim_lsp'

let g:diagnostic_enable_virtual_text = 1
