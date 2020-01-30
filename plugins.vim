call plug#begin('~/.config/nvim-plugged')
	Plug 'arzg/vim-colors-xcode'
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary', 'branch': 'rpc'}
	Plug 'airblade/vim-rooter'
	Plug 'justinmk/vim-sneak'
	Plug 'Yggdroot/indentLine'
	Plug 'tveskag/nvim-blame-line'
	Plug 'chriskempson/base16-vim'
	Plug 'nanotech/jellybeans.vim'
	Plug 'ayu-theme/ayu-vim'
	Plug 'yuttie/inkstained-vim'
	Plug 'beikome/cosme.vim'
	Plug 'cocopon/iceberg.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

	Plug 'liuchengxu/vim-which-key'
	Plug 'junegunn/fzf.vim'
	Plug 'justinmk/vim-sneak'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'

	Plug 'Shougo/neco-vim'
	Plug 'neoclide/coc-neco'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'Shougo/echodoc.vim'
	Plug 'liuchengxu/vista.vim'
	Plug 'majutsushi/tagbar'
	
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'sheerun/vim-polyglot'
call plug#end()

let g:which_key_use_floating_win = 0
let g:rooter_change_directory_for_non_project_files = 'current'
