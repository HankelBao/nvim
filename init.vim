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
    Plug 'colepeters/spacemacs-theme.vim'
    Plug 'yggdroot/indentline'
    " Interface
    Plug 'houtsnip/vim-emacscommandline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'lambdalisue/vim-fullscreen'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    Plug 'thaerkh/vim-workspace'
    Plug 'majutsushi/tagbar'
    " Denite
    Plug 'Shougo/denite.nvim'
    Plug 'shougo/neomru.vim'
    Plug 'chemzqm/denite-git'
    " Language
    Plug 'neomake/neomake'
    Plug 'Shougo/deoplete.nvim'
    Plug 'Shougo/neco-vim'
    Plug 'zchee/deoplete-jedi'
call plug#end()

" Change mappings.
call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

let g:deoplete#enable_at_startup = 1

let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_error_sign = {'text': 'E', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': 'W', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': 'M', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'I', 'texthl': 'NeomakeInfoSign'}
call neomake#configure#automake('w')
call neomake#configure#automake('nw', 750)
call neomake#configure#automake('rw', 1000)
call neomake#configure#automake('nrwi', 500)

let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"

""" }}}

""" Shortcuts and Mappings {{{
let mapleader=" "
" Shortcuts{
    noremap ; :
    noremap ' :!
    tnoremap <ESC> <C-\><C-n>
    noremap <Leader>o :Denite -auto-resize outline<CR>
    noremap <Leader>f :Denite -auto-resize file<CR>
    noremap <Leader>b :Denite -auto-resize buffer<CR>
    noremap <Leader>w <C-W>
    noremap <Leader>e :edit
" }
" Views {
    noremap <Leader>vn :NERDTreeToggle<CR>
    noremap <Leader>vt :TagbarToggle<CR>
    noremap <Leader>vf :FullscreenToggle<CR>
    noremap <Leader>vT :terminal<CR>
" }
" Tabs {
    noremap <Leader>n :tabn<CR>
    noremap <Leader>p :tabp<CR>
" }
" Edit {
    noremap <Leader>id !!date +\%F<CR>
    noremap <Leader>it :call feedkeys("i" . strftime('%c'))<CR>
" }
" Git {
    noremap <Leader>gs :Gstatus<CR>
    noremap <Leader>gc :Gcommit<CR>
    noremap <Leader>gp :Gpush<CR>
    noremap <Leader>gb :Denite gitbranch<CR>
    noremap <Leader>ga :Git add --a<CR>
    noremap <Leader>go :Git checkout
" }
" Settings {
    noremap <Leader>s% :source %<CR>
    noremap <Leader>si :PlugInstall<CR>
    noremap <Leader>su :PlugUpdate<CR>
    noremap <Leader>sd :PlugClean<CR>
    noremap <Leader>sc :Denite -auto-resize colorscheme<CR>
    if has('win64') || has('win32')
        noremap <Leader>ss :tabedit C:\Users\hankelbao\AppData\Local\nvim\init.vim<CR>
    endif
" }
""" }}}

""" Basic Configuration {{{
set guioptions=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set noswapfile
filetype plugin on
set shiftwidth=4 
set tabstop=4
set laststatus=2
set showtabline=0
set expandtab

colorscheme base16-solarized-dark
""" }}}
