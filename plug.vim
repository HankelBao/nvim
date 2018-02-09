call plug#begin("~/.vim/plugged")
	"Interface
	Plug 'hecal3/vim-leader-guide'
	Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
	"Language
	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1	
	Plug 'zchee/deoplete-jedi'
	Plug 'zchee/deoplete-go', { 'do': 'make'}
	Plug 'Shougo/neco-vim'
call plug#end()

source ~/.config/nvim/plugins/vim-leader-guide.vim
