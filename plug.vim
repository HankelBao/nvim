call plug#begin("~/.vim/plugged")
	" Colorscheme
	Plug 'chriskempson/base16-vim'
	" Interface
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'FelikZ/ctrlp-py-matcher'
	Plug 'tacahiroy/ctrlp-funky'
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
	Plug 'zchee/deoplete-jedi'
	Plug 'Shougo/neco-vim'
	Plug 'carlitux/deoplete-ternjs'
	Plug 'sebastianmarkow/deoplete-rust'
call plug#end()


" deoplete {
	let g:deoplete#enable_at_startup = 1	
	let g:deoplete#enable_refresh_always = 1
"

" deoplete-tern {
	let g:deoplete#sources#ternjs#tern_bin = "ternjs"
" }


" deoplete-go {
	try
		if has('win64') || has('win32')
			let g:deoplete#sources#go#gocode_binary = "~/go/bin/gocode.exe"
		else
			let g:deoplete#sources#go#gocode_binary = "~/go/bin/gocode"
		endif
	catch
	endtry
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
