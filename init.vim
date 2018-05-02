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
    Plug 'houtsnip/vim-emacscommandline'
    " Interface
    Plug 'jiangmiao/auto-pairs'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'Shougo/denite.nvim'
    Plug 'shougo/neomru.vim'
    Plug 'chemzqm/denite-git'
    Plug 'lambdalisue/vim-fullscreen'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    Plug 'thaerkh/vim-workspace'
    " Language
    Plug 'neomake/neomake'
    Plug 'Shougo/deoplete.nvim'
    Plug 'Shougo/neco-vim'
    Plug 'zchee/deoplete-jedi'
call plug#end()

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
    noremap <Leader>f :Denite file<CR>
    noremap <Leader>b :Denite buffer<CR>
    noremap <Leader>w <C-W>
    noremap <Leader>e :edit 
    noremap <Leader>t :terminal<CR>
    noremap <Leader>c :cd 
" }
" Views {
    noremap <Leader>vn :NERDTreeToggle<CR>
    noremap <Leader>vt :TagbarToggle<CR>
    noremap <Leader>vf :FullscreenToggle<CR>
" }
" Edit {
    noremap <Leader>id !!date +\%F<CR>
    noremap <Leader>it :call feedkeys("i" . strftime('%c'))<CR>
    noremap <Leader>ij :call JsBeautify()<cr>
    noremap <Leader>is :call JsonBeautify()<cr>
    noremap <Leader>ix :call JsxBeautify()<cr>
    noremap <Leader>ih :call HtmlBeautify()<cr>
    noremap <Leader>ic :call CSSBeautify()<cr>
" }
" Git {
    noremap <Leader>gs :Gstatus<CR>
    noremap <Leader>gc :Gcommit<CR>
    noremap <Leader>gp :Gpush<CR>
    noremap <Leader>gb :Git branch<CR>
    noremap <Leader>ga :Git add --a<CR>
    noremap <Leader>go :Git checkout
" }
" Update {
    noremap <Leader>us :source %<CR>
    noremap <Leader>ui :PlugInstall<CR>
    noremap <Leader>uu :PlugUpdate<CR>
    noremap <Leader>ud :PlugClean<CR>
    if has('win64') || has('win32')
        noremap <Leader>uc :tabedit C:\Users\hankelbao\AppData\Local\nvim\init.vim<CR>
    else
        noremap <Leader>um :tabedit ~/.config/nvim/mapping.vim<CR>
        noremap <Leader>up :tabedit ~/.config/nvim/plug.vim<CR>
        noremap <Leader>ub :tabedit ~/.config/nvim/basic.vim<CR>
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

colorscheme base16-solarized-light
""" }}}
