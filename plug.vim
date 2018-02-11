call plug#begin("~/.vim/plugged")

	" Code Display
	Plug 'HankelBao/vim-blackarch-theme'
	Plug 'morhetz/gruvbox'

	"Interface
	Plug 'hecal3/vim-leader-guide'
	Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'tpope/vim-fugitive'

	"Language
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	let g:deoplete#enable_at_startup = 1	

	Plug 'zchee/deoplete-jedi'
	Plug 'zchee/deoplete-go', { 'do': 'make'}
	Plug 'Shougo/neco-vim'
	Plug 'carlitux/deoplete-ternjs'

call plug#end()

" vim-leader-guide {
	let g:lmap =  {}
	call leaderGuide#register_prefix_descriptions(",", "g:lmap")
	nnoremap <space> :LeaderGuide ','<CR>
	vnoremap <space> :LeaderGuideVisual ','<CR>
" }
