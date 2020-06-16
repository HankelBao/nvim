function! GetNVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction

call plug#begin('~/.config/vim-plugged')
	Plug 'justinmk/vim-sneak'
	Plug 'chriskempson/base16-vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'liuchengxu/vim-which-key'
	Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-rooter'
    Plug 'liuchengxu/vim-clap'
    Plug 'liuchengxu/vista.vim'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown' }
	Plug 'Shougo/neco-vim', { 'for': 'vim' }
	Plug 'neoclide/coc-neco', { 'for': 'vim' }
    if GetNVimVersion() == "0.4.3"
        Plug 'jackguo380/vim-lsp-cxx-highlight', {'for' : ['c', 'cpp']}
    endif
    if GetNVimVersion() != "0.4.3"
        Plug 'nvim-treesitter/nvim-treesitter'
    endif
call plug#end()

let g:which_key_use_floating_win = 1
let g:rooter_change_directory_for_non_project_files = 'current'


if GetNVimVersion() != "0.4.3"
lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,                    -- false will disable the whole extension
    },
    incremental_selection = {
        enable = true,
    },
    ensure_installed = 'all' -- one of 'all', 'language', or a list of languages
}
EOF
endif
