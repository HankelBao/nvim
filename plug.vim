call plug#begin("~/.vim/plugged")

	"Interface
	Plug 'hecal3/vim-leader-guide'
	Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'tpope/vim-fugitive'

	"Language
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	let g:deoplete#enable_at_startup = 1	
	Plug 'zchee/deoplete-jedi'
	"Plug 'zchee/deoplete-go', { 'do': 'make'}
	Plug 'Shougo/neco-vim'

call plug#end()

if has("win64") || has("win32")
	source ~\AppData\Local\nvim\plugins\vim-leader-guide.vim
else
	source ~/.config/nvim/plugins/vim-leader-guide.vim
endif
