set termguicolors
set noshowmode
set hidden
set nobackup
set nowritebackup
set nowrap
set number
set relativenumber
set cmdheight=1
set updatetime=300
set signcolumn=yes
set timeoutlen=500
set shortmess+=c
set completeopt=menu,menuone,noinsert,noselect,preview

set expandtab
set shiftwidth=4
set tabstop=4

" let ayucolor="light"
" let ayucolor="dark"
" colorscheme ayu
" if filereadable(expand("~/.vimrc_background"))
"   let base16colorspace=256
"   source ~/.vimrc_background
" endif
let g:gruvbox_contrast_light="hard"
set background=light
colorscheme nord

let g:vim_markdown_conceal = 0
let g:python3_host_prog = '/usr/bin/python3'
let g:chromatica#libclang_path='/usr/lib/libcc1.so'
