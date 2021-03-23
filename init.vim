""" Packages
call plug#begin('~/.config/plugged')
	Plug 'rmagatti/auto-session'
	Plug 'kevinhwang91/nvim-hlslens'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'akinsho/nvim-toggleterm.lua'
	" Plug 'antoinemadec/FixCursorHold.nvim'
    Plug 'gennaro-tedesco/nvim-commaround'
    Plug 'RRethy/vim-illuminate'
    Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

    " Plug 'camspiers/animate.vim'
    " Plug 'camspiers/lens.vim'

	Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/completion-treesitter'
    Plug 'steelsojka/completion-buffers'
    Plug 'glepnir/lspsaga.nvim'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'sheerun/vim-polyglot'
    Plug 'rktjmp/lush.nvim'
    Plug 'npxbr/gruvbox.nvim'
	Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'kyazdani42/blue-moon'
    Plug 'Th3Whit3Wolf/one-nvim'
    Plug 'ray-x/aurora'
    Plug 'novakne/kosmikoa.nvim'

    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'

	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

	Plug 'lambdalisue/fern.vim'
	Plug 'lambdalisue/fern-renderer-devicons.vim'
	Plug 'lambdalisue/fern-git-status.vim'

	Plug 'lervag/vimtex'
call plug#end()


""" Treesitter & Toggleterm
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
require"toggleterm".setup{
	size = 7,
	open_mapping = [[<c-t>]],
	direction = 'horizontal'
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.pyls.setup{
}
require'lspconfig'.tsserver.setup{
}
require'lspconfig'.clangd.setup{
}
require'lspconfig'.rls.setup{
}
-- require'lspconfig'.texlab.setup{}
require'lspconfig'.html.setup { 
    capabilities = c
}

local saga = require 'lspsaga'
saga.init_lsp_saga()

local lualine = require('lualine')
lualine.status()
lualine.options.theme = "gruvbox"

EOF

""" Theme
set termguicolors
set completeopt=menu,menuone,noselect

colorscheme gruvbox

tnoremap <Esc> <C-\><C-n>
noremap <C-P> :Telescope find_files<CR>
noremap <C-R> :Telescope oldfiles<CR>
noremap <C-D> :Fern . -drawer -toggle<CR>

autocmd BufEnter * lua require'completion'.on_attach()

let g:fern#renderer = "devicons"
let g:cursorhold_updatetime = 100

let g:vimtex_view_general_viewer = 'sumatrapdf.exe'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : '<Tab>'
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : '<S-Tab>'


vmap <C-E> <Plug>ToggleCommaround

noremap <silent> <C-Q> :Sayonara<CR>

nnoremap <silent> <C-M>s :Lspsaga signature_help<CR>
nnoremap <silent> <C-M>a :Lspsaga code_action<CR>
nnoremap <silent> <C-M>k :Lspsaga hover_doc<CR>
nnoremap <silent> <C-M>r :Lspsaga rename<CR>
nnoremap <silent> <C-M>d :Lspsaga preview_definition<CR>
nnoremap <silent> <C-M>e :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> <C-M>h :Lspsaga lsp_finder<CR>

xnoremap > >gv
xnoremap < <gv

let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'snippet', 'ts']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
    \]

let g:sayonara_confirm_quit = 1

