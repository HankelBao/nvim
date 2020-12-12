" packadd spaceline.vim

" let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1
" let g:airline_mode_map = {
" 	\ '__'     : '-',
" 	\ 'c'      : 'C',
" 	\ 'i'      : 'I',
" 	\ 'ic'     : 'I',
" 	\ 'ix'     : 'I',
" 	\ 'n'      : 'N',
" 	\ 'multi'  : 'M',
" 	\ 'ni'     : 'N',
" 	\ 'no'     : 'N',
" 	\ 'R'      : 'R',
" 	\ 'Rv'     : 'R',
" 	\ 's'      : 'S',
" 	\ 'S'      : 'S',
" 	\ ''     : 'S',
" 	\ 't'      : 'T',
" 	\ 'v'      : 'V',
" 	\ 'V'      : 'V',
" 	\ ''     : 'V',
" 	\ }

let g:airline_filetype_overrides = {
	\ 'defx':  ['defx', '%{b:defx.paths[0]}'],
	\ 'gundo': [ 'Gundo', '' ],
	\ 'help':  [ 'Help', '%f' ],
	\ 'minibufexpl': [ 'MiniBufExplorer', '' ],
	\ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
	\ 'startify': [ 'startify', '' ],
	\ 'vim-plug': [ 'Plugins', '' ],
	\ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
	\ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
	\ }

let g:airline_theme='base16'
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''


" set statusline=
" set statusline+=\ \:\:%{coc#status()}
" set statusline+=%=
" set statusline+=\ %{GetFuncSymbol()}%f
" set statusline+=\ %lL:%cC
" set statusline+=\

let g:spaceline_seperate_style="arrow"

let g:spaceline_colorscheme = 'space'
let g:spaceline_diagnostic_tool = 'nvim_lsp'
let g:spaceline_diff_tool = 'git-gutter'
