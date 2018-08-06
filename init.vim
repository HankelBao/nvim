""" HankelBao's Neovim Configuration File

""" Settings for Python {{{
if has("win64") || has("win32")
    let g:python3_host_prog='C:\Users\hankelbao\AppData\Local\Programs\Python\Python37-32\python.exe'
else
    let g:python3_host_prog='python3'
endif
""" }}}

""" Plugins and Configurations {{{
call plug#begin("~/.vim/plugged")
    " Plug 'sheerun/vim-polyglot'
    Plug 'nanotech/jellybeans.vim'
    Plug 'chriskempson/base16-vim'
    Plug 'jacoborus/tender.vim'
    Plug 'vim-scripts/wombat256.vim'
    Plug 'yggdroot/indentline'

    Plug 'tpope/vim-fugitive'
    Plug 'hecal3/vim-leader-guide'

    Plug 'qpkorr/vim-bufkill'
    Plug 'houtsnip/vim-emacscommandline'

    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'

    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'scrooloose/nerdtree'

    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'

    Plug 'thinca/vim-quickrun'
    " Plug 'neomake/neomake'
    " Plug 'w0rp/ale'
    Plug 'posva/vim-vue'

    " Plug 'Shougo/deoplete.nvim'
    " Plug 'zchee/deoplete-jedi'
    " let g:deoplete#enable_at_startup = 1

    Plug 'Shougo/echodoc.vim'
    let g:echodoc#enable_at_startup = 1

    " Plug 'ncm2/ncm2'
    " Plug 'roxma/nvim-yarp'
    " Plug 'ncm2/ncm2-bufword'
    " Plug 'ncm2/ncm2-path'
    " Plug 'ncm2/ncm2-jedi'
    " autocmd BufEnter * call ncm2#enable_for_buffer()
    set completeopt=noinsert,menuone,noselect

    Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
    " set completeopt=menu

    Plug 'Shougo/denite.nvim'

    " Plug 'autozimu/LanguageClient-neovim', {
    "     \ 'branch': 'next',
    "     \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
    "     \ }

    " Plug 'ncm2/ncm2-ultisnips'
    " Plug 'SirVer/ultisnips'

call plug#end()

" let g:airline_powerline_fonts = 1
" let g:deoplete#enable_at_startup = 1
" let g:neomake_python_enabled_makers = ['autopep8']
" call neomake#configure#automake('w', 0)
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }
" let g:LanguageClient_serverCommands = {
"     \ 'vue': ['vls']
"     \ }


    " " When the <Enter> key is pressed while the popup menu is visible, it only
    " " hides the menu. Use this mapping to close the menu and also start a new
    " " line.
    " inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    " " Use <TAB> to select the popup menu:
    " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab for trigger completion with characters ahead.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> for confirm completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Show signature help while editing
autocmd CursorHoldI,CursorMovedI * silent! call CocAction('showSignatureHelp')

" Open quickfix list on quickfix change triggered by coc
autocmd User CocQuickfixChange :copen

" Remap for rename current word

" Use `:Format` for format current file
command! -nargs=0 Format :call CocAction('format')

" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }


" Shortcuts for denite interface
" Show symbols of current buffer
nnoremap <silent> <space>o  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> <space>t  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> <space>a  :<C-u>Denite coc-diagnostic<cr>

autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>

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
let g:lmap.g = { 'name' : '+Goto' }
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
" Global
noremap <Leader><Space> :
tnoremap <Esc> <C-\><C-n>
noremap <m-q> :BD<CR>
noremap <m-e> :wqa<CR>
noremap <m-s> :w<CR>
noremap <m-n> :NERDTreeToggle<CR>
" File
noremap <Leader>ff :Files<CR>
noremap <Leader>fs :Files<CR>
noremap <Leader>fuf :Files ~<CR>
" Buffer
noremap <Leader>bb :Buffers<CR>
noremap <Leader>bq :BD<CR>
" Search
noremap <Leader>sj :BTags<CR>
noremap <Leader>sl :BLines<CR>
" Project
noremap <Leader>pf :Files<CR>
noremap <Leader>pj :Tags<CR>
noremap <Leader>pl :Lines<CR>
" Error
noremap <Leader>er :lwindow<CR>
noremap <Leader>el :lopen<CR>
noremap <Leader>ec :lclose<CR>
" Major Mode Keys
noremap <Leader>mc :QuickRun<CR>
" Views 
noremap <Leader>vn :NERDTreeToggle<CR>
noremap <Leader>vt :call vimterm#toggle()<CR>
" Nevigation
noremap <Leader>nn :tabn<CR>
noremap <Leader>np :tabp<CR>
" Gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Edit
noremap <Leader>id !!date +\%F<CR>
noremap <Leader>it :call feedkeys("i" . strftime('%c'))<CR>
noremap <Leader>ic :Commentary<CR>
noremap <leader>ir <Plug>(coc-rename)
" Settings
noremap <Leader>sr :source %<CR>
noremap <Leader>si :PlugInstall<CR>
noremap <Leader>su :PlugUpdate<CR>
noremap <Leader>sd :PlugClean<CR>
noremap <Leader>sc :Colors<CR>

if has('win64') || has('win32')
    noremap <Leader>ss :tabedit C:\Users\hankelbao\AppData\Local\nvim\init.vim<CR>
else
    noremap <Leader>ss :tabedit ~/.config/nvim/init.vim<CR>
endif

""" Basic Configuration {{{
set shortmess=atc
set noswapfile
filetype plugin on
set tabstop=4
set shiftwidth=4
set laststatus=2
set showtabline=0
set expandtab
set noshowmode
set number
set inccommand=nosplit

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
else
    colorscheme wombat256mod
endif
""" }}}
