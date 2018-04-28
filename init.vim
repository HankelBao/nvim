""" HankelBao's Neovim Configuration File

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
    Plug 'colepeters/spacemacs-theme.vim'
    Plug 'yggdroot/indentline'
    " Interface
    Plug 'vim-ctrlspace/vim-ctrlspace'
    Plug 'lambdalisue/vim-fullscreen'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    " Language
    " Plug 'majutsushi/tagbar'
    " Plug 'posva/vim-vue'
    " Plug 'pangloss/vim-javascript'
    " Plug 'artur-shaik/vim-javacomplete2'
    " Plug 'w0rp/ale'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    " Auto Completion
call plug#end()

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" Fullscreen {
    " In ginit.vim
    let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
    let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"
" }
""" }}}

""" Shortcuts and Mappings {{{
let mapleader=" "
" Shortcuts{
    noremap ; :
    noremap ' :!
    tnoremap <ESC> <C-\><C-n>
    noremap <Leader>o :CtrlSpace o<CR>
    noremap <Leader>b :CtrlSpace b<CR>
    noremap <Leader>w <C-W>
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
set foldmethod=indent
set foldlevel=8
set noswapfile
set cursorline
filetype plugin on
set shiftwidth=4 
set tabstop=4
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
