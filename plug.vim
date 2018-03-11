call plug#begin("~/.vim/plugged")
	" Colorscheme
	Plug 'chriskempson/base16-vim'
	" Interface
	Plug 'hecal3/vim-leader-guide'
	Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'tpope/vim-fugitive'
	Plug 'scrooloose/nerdtree'
	Plug 'Yggdroot/indentLine'
	" Language
	Plug 'majutsushi/tagbar'
	Plug 'w0rp/ale'
	Plug 'pangloss/vim-javascript'
	Plug 'othree/html5.vim'
	Plug 'posva/vim-vue'
	Plug 'hail2u/vim-css3-syntax'
	" Auto Completion
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-jedi'
	Plug 'zchee/deoplete-go', { 'do': 'make'}
	Plug 'Shougo/neco-vim'
	Plug 'carlitux/deoplete-ternjs'
call plug#end()

" vim-leader-guide {
	try
		let g:lmap =  {}
		call leaderGuide#register_prefix_descriptions(",", "g:lmap")
		nnoremap <space> :LeaderGuide ','<CR>
		vnoremap <space> :LeaderGuideVisual ','<CR>
	catch
	endtry
" }

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
