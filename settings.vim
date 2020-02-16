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
let ayucolor="mirage"
" let ayucolor="dark"
" colorscheme ayu
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
" colorscheme base16-atlas

let g:vim_markdown_conceal = 0
