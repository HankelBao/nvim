call plug#begin('~/.config/nvim-plugged')
	Plug 'chriskempson/base16-vim'
	Plug 'nanotech/jellybeans.vim'
	Plug 'ayu-theme/ayu-vim'
	Plug 'yuttie/inkstained-vim'
	Plug 'beikome/cosme.vim'
	Plug 'cocopon/iceberg.vim'
	Plug 'ryanoasis/vim-devicons'
	" Plug 'itchyny/lightline.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'liuchengxu/vim-which-key'
	Plug 'justinmk/vim-sneak'
	Plug 'tpope/vim-fugitive'

	" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Plug 'Shougo/echodoc.vim'
	Plug 'liuchengxu/vista.vim'
	Plug 'majutsushi/tagbar'
	
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'sheerun/vim-polyglot'
call plug#end()
