call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'chemzqm/denite-extra'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect,preview
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
Plug 'ncm2/ncm2-path'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2-vim-lsp'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
let g:airline_powerline_fonts = 1
call plug#end()

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set splitbelow
set previewheight=2
set hidden
set noshowmode

let mapleader=" "
noremap <leader><space> :
noremap <leader>fs :w<CR>
noremap <leader>ff :Denite -auto-resize file<CR>
noremap <leader>fr :Denite -auto-resize file_old<CR>
noremap <leader>fj :Denite -auto-resize line<CR>
noremap <leader>fo :LspDocumentSymbol<CR>
noremap <leader>pf :DeniteProjectDir -auto-resize file_rec<CR>
noremap <leader>pj :DeniteProjectDir -auto-resize line<CR>
noremap <leader>pe :DeniteProjectDir -auto-resize quickfix<CR>
noremap <leader>bb :Denite -auto-resize buffer<CR>
noremap <leader>qq :wqa<CR>
noremap <leader>qf :qa!<CR>
noremap <leader>el :LspDocumentDiagnostics<CR>
noremap <leader>ws :split<CR>
noremap <leader>wv :vsplit<CR>
noremap <leader>wt :NERDTreeToggle<CR>
noremap <leader>gd :LspDefinition<CR>
noremap <leader>md :LspHover<CR>
noremap <leader>mf :LspDocumentFormat<CR>
