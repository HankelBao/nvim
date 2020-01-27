set termguicolors
" let ayucolor="light"
" let ayucolor="mirage"
" let ayucolor="dark"
set noshowmode
set completeopt=noinsert,menuone,noselect
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set signcolumn=auto
set timeoutlen=500
set shortmess=a

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
" colorscheme base16-atlas
