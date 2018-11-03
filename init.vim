call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'chemzqm/denite-extra'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
Plug 'ncm2/ncm2-path'
Plug 'Shougo/echodoc.vim'
let g:echodoc#enable_at_startup = 1
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'scrooloose/nerdtree'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
let g:airline_powerline_fonts = 1
call plug#end()

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['pyls'],
    \ }

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set splitbelow
set previewheight=2
set hidden
set noshowmode

let mapleader=" "
noremap <leader><space> :
noremap <leader>fs :w<CR>
noremap <leader>ff :Denite -auto-resize file<CR>
noremap <leader>fr :Denite -auto-resize file_old<CR>
noremap <leader>fj :Denite -auto-resize line<CR>
noremap <leader>fo :Denite -auto-resize outline<CR>
noremap <leader>fm :Denite -auto-resize contextMenu<CR>
noremap <leader>fe :Denite -auto-resize quickfix<CR>
noremap <leader>pf :DeniteProjectDir -auto-resize file_rec<CR>
noremap <leader>pj :DeniteProjectDir -auto-resize line<CR>
noremap <leader>pe :DeniteProjectDir -auto-resize quickfix<CR>
noremap <leader>bb :Denite -auto-resize buffer<CR>
noremap <leader>qq :wqa<CR>
noremap <leader>qf :qa!<CR>
noremap <leader>el :Denite -auto-resize quickfix<CR>
noremap <leader>ws :split<CR>
noremap <leader>wv :vsplit<CR>
noremap <leader>wt :NERDTreeToggle<CR>
noremap <leader>mr :call LanguageClient#textDocument_rename()<CR>
noremap <leader>mgd :call LanguageClient#textDocument_definition()<CR>
noremap <leader>md :call LanguageClient#textDocument_hover()<CR>
noremap <leader>mf :call LanguageClient#textDocument_formatting()<CR>
