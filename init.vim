""" HankelBao's Neovim Configuration File

""" Settings for Python {{{
if has("win64") || has("win32")
    let g:python3_host_prog='C:\Users\hankelbao\AppData\Local\Programs\Python\Python36\python.exe'
else
    let g:python3_host_prog='python3'
endif
""" }}}

""" Plugins and Configurations {{{
call plug#begin("~/.vim/plugged")
    " Colorscheme
    Plug 'chriskempson/base16-vim'
    Plug 'yggdroot/indentline'
    " Interface
    Plug 'houtsnip/vim-emacscommandline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdtree'
    Plug 'pbrisbin/vim-mkdir'
    Plug 'tpope/vim-fugitive'
    Plug 'hecal3/vim-leader-guide'
    Plug 'majutsushi/tagbar'
    Plug 'qpkorr/vim-bufkill'
    Plug 'tpope/vim-commentary'
    " Denite
    Plug 'kien/ctrlp.vim'
    Plug 'FelikZ/ctrlp-py-matcher'
    " Language
    Plug 'sheerun/vim-polyglot'
    Plug 'thinca/vim-quickrun'
    Plug 'neomake/neomake'
    Plug 'roxma/nvim-completion-manager'
    Plug 'Shougo/neco-vim'
    " Plug 'ncm2/ncm2'
    " Plug 'roxma/nvim-yarp'"
    " Plug 'ncm2/ncm2-bufword'
    " Plug 'ncm2/ncm2-path'
    " Plug 'ncm2/ncm2-jedi'
call plug#end()

let g:ctrlp_by_filename = 1
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
 
" autocmd BufEnter * call ncm2#enable_for_buffer()
" set completeopt=noinsert,menuone,noselect

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_error_sign = {'text': 'E', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': 'W', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': 'M', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'I', 'texthl': 'NeomakeInfoSign'}
call neomake#configure#automake('w')
call neomake#configure#automake('nw', 750)
call neomake#configure#automake('rw', 1000)
call neomake#configure#automake('nrwi', 500)

""" }}}

""" Shortcuts and Mappings {{{
let mapleader=" "
let g:lmap =  {}
let g:lmap.f = { 'name' : '+File' }
let g:lmap.b = { 'name' : '+Buffer' }
let g:lmap.s = { 'name' : '+Search' }
let g:lmap.p = { 'name' : '+Project' }
let g:lmap.e = { 'name' : '+Error' }
let g:lmap.m = { 'name' : '+Major Mode Keys' }
let g:lmap.v = { 'name' : '+Views' }
let g:lmap.n = { 'name' : '+Nevigation' }
let g:lmap.b = { 'name' : '+Buffer' }
let g:lmap.s = { 'name' : '+Settings' }
let g:lmap.i = { 'name' : '+Edit' }
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
" Global
noremap <Leader><Space> :
tnoremap <Esc> <C-\><C-n>
" File
noremap <Leader>ff :Denite file<CR>
noremap <Leader>fs :CtrlP<CR>
noremap <Leader>fr :CtrlPMRUFiles<CR>
noremap <Leader>fuf :Denite -path=~ file<CR>
noremap <Leader>fba :CtrlPBookmarkDirAdd<CR>
noremap <Leader>fbb :CtrlPBookmarkDir<CR>
" Buffer
noremap <Leader>bb :CtrlPBuffer<CR>
noremap <Leader>bq :BD<CR>
" Search
noremap <Leader>sj :CtrlPBufTag<CR>
noremap <Leader>sl :CtrlPLine<CR>
" Project
noremap <Leader>pf :CtrlP<CR>
noremap <Leader>pj :CtrlPBufTagAll<CR>
" Error
noremap <Leader>el :lwindow<CR>
noremap <Leader>ec :lclose<CR>
" Major Mode Keys
noremap <Leader>mc :QuickRun<CR>
" Views 
noremap <Leader>vn :NERDTreeToggle<CR>
noremap <Leader>vt :TagbarToggle<CR>
noremap <Leader>vT :terminal Powershell<CR>
" Nevigation
noremap <Leader>nn :tabn<CR>
noremap <Leader>np :tabp<CR>
" Edit
noremap <Leader>id !!date +\%F<CR>
noremap <Leader>it :call feedkeys("i" . strftime('%c'))<CR>
noremap <Leader>ic :Commentary<CR>
" Settings
noremap <Leader>s% :source %<CR>
noremap <Leader>si :PlugInstall<CR>
noremap <Leader>su :PlugUpdate<CR>
noremap <Leader>sd :PlugClean<CR>
noremap <Leader>sc :Denite -auto-resize colorscheme<CR>
if has('win64') || has('win32')
    noremap <Leader>ss :tabedit C:\Users\hankelbao\AppData\Local\nvim\init.vim<CR>
endif

""" Basic Configuration {{{
set shortmess=atc
set noswapfile
filetype plugin on
set tabstop=4
set shiftwidth=4
set laststatus=1
set showtabline=0
set expandtab
set noshowmode
set autochdir
autocmd FileType html setlocal shiftwidth=2 tabstop=2

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif
""" }}}
