""" HankelBao's Neovim Configuration File {{{
" Please visit https://github.com/HankelBao/nvim
" It consists of:
" * Settings for Python
" * Plugins and Configurations
" * Shortcuts and Mappings
" * Basic Configurations
""" }}}

""" Settings for Python {{{
if has("win64") || has("win32")
    let g:python_host_prog='C:\Users\hankelbao\AppData\Local\Programs\Python\Python36\python.exe'
    let g:python3_host_prog='C:\Users\hankelbao\AppData\Local\Programs\Python\Python36\python.exe'
else
    let g:python_host_prog='python'
    let g:python3_host_prog='python3'
endif
""" }}}

""" Plugins and Configurations {{{
call plug#begin("~/.vim/plugged")
    " Colorscheme
    Plug 'chriskempson/base16-vim'
    Plug 'yggdroot/indentline'
    " Interface
    Plug 'szw/vim-ctrlspace'
    Plug 'lambdalisue/vim-fullscreen'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    " Language
    Plug 'majutsushi/tagbar'
    Plug 'posva/vim-vue'
    Plug 'pangloss/vim-javascript'
    " Plug 'w0rp/ale'
    " Auto Completion
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'ervandew/supertab'
    Plug 'zchee/deoplete-jedi'
    Plug 'Shougo/neco-vim'
    Plug 'carlitux/deoplete-ternjs'
    Plug 'sebastianmarkow/deoplete-rust'
call plug#end()
" supertab {
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" }
" deoplete {
    let g:deoplete#enable_at_startup = 1    
    let g:deoplete#enable_refresh_always = 1
" }
" deoplete-tern {
    let g:deoplete#sources#ternjs#tern_bin = "ternjs"
" }
" deoplete-go {
    if has('win64') || has('win32')
        let g:deoplete#sources#go#gocode_binary = "~/go/bin/gocode.exe"
    else
        let g:deoplete#sources#go#gocode_binary = "~/go/bin/gocode"
    endif
" }
" ctags {
    let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags.exe',
        \ 'ctagsargs' : '-sort -silent'
    \ }
" }
" CtrlP {
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" }
" Fullscreen {
    " In ginit.vim
    let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
    let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"
" }
" Rust {
    let g:deoplete#sources#rust#racer_binary='C:\Users\hankelbao\.cargo\bin\racer.exe'
    let g:deoplete#sources#rust#rust_source_path='C:\Users\hankelbao\.rust-lang\rust\src'
    let g:deoplete#sources#rust#show_duplicates=1
" }
""" }}}

""" Shortcuts and Mappings {{{
let mapleader=","
" Shortcuts{
    noremap ; :
    noremap ' :!
    tnoremap <ESC> <C-\><C-n>
    noremap <space> :CtrlSpace<CR>
    noremap <Leader>o :CtrlSpace o<CR>
    noremap <Leader>b :CtrlSpace b<CR>
    noremap <Leader>w :CtrlSpace w<CR>
    noremap <Leader>l :CtrlSpace l<CR>
    noremap <Leader>h :CtrlSpace h<CR>
    noremap <Leader>e :edit 
    noremap <Leader>t :terminal<CR>
" }
" Views {
    noremap <Leader>vn :NERDTreeToggle<CR>
    noremap <Leader>vt :TagbarToggle<CR>
    noremap <Leader>vf :FullscreenToggle<CR>
" }
" Files {
    noremap <Leader>fe :edit 
    noremap <Leader>fs :w!<CR>
    noremap <Leader>fq :qa<CR>
    noremap <Leader>ff :wqa<CR>
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
set number
set foldmethod=indent
set foldlevel=8
set noswapfile
set cursorline
filetype plugin on
set shiftwidth=4 
set tabstop=4
colorscheme base16-gruvbox-dark-medium
set laststatus=1
set showtabline=0
set hidden
set expandtab
autocmd FileType vim setlocal foldmethod=marker
" if filereadable(expand("~/.vimrc_background"))
"   let base16colorspace=256
"   source ~/.vimrc_background
" endif
""" }}}
