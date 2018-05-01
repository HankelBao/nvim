""" HankelBao's Neovim Configuration File

""" Settings for Python {{{
if has("win64") || has("win32")
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
    Plug 'Shougo/denite.nvim'
    Plug 'lambdalisue/vim-fullscreen'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    " Language
    Plug 'Shougo/echodoc.vim'
call plug#end()

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'typescript-language-server',
      \ 'cmd': { server_info->['typescript-language-server --stdio']},
      \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
      \ 'whitelist': ['typescript', 'javascript', 'javascript.jsx']
      \ })
endif

let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
set completeopt-=preview

let g:echodoc#enable_at_startup = 1
set noshowmode

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
    \ 'name': 'necovim',
    \ 'whitelist': ['vim'],
    \ 'completor': function('asyncomplete#sources#necovim#completor'),
    \ }))

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
set bg=dark
colorscheme base16-solarized-light
autocmd FileType vim setlocal foldmethod=marker
" if filereadable(expand("~/.vimrc_background"))
"   let base16colorspace=256
"   source ~/.vimrc_background
" endif
""" }}}
