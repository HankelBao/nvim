set termguicolors
set noshowmode
set hidden
set nobackup
set nowritebackup
set nowrap
set cmdheight=1
set updatetime=300
set timeoutlen=500
set completeopt=menu,menuone,noinsert,noselect,preview

set expandtab
set shiftwidth=4
set tabstop=4

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:vim_markdown_conceal = 0

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

