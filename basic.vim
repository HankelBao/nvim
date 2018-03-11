set number
set foldmethod=indent
set foldlevel=8
set noswapfile
set cursorline
filetype plugin on
autocmd Filetype css setlocal shiftwidth=4 tabstop=4
autocmd Filetype html setlocal shiftwidth=4 tabstop=4

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
