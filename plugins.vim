function! GetNVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction

let g:vimspector_enable_mappings='HUMAN'

call plug#begin('~/.config/vim-plugged')
	Plug 'justinmk/vim-sneak'
	Plug 'chriskempson/base16-vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'liuchengxu/vim-which-key'
	Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-rooter'
    Plug 'liuchengxu/vista.vim'

	" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown' }
    Plug 'norcalli/typeracer.nvim'
    Plug 'lambdalisue/fern.vim'

    Plug 'neovim/nvim-lsp'
    Plug 'puremourning/vimspector'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
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
