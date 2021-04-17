local paq = require'paq-nvim'.paq

paq 'neovim/nvim-lspconfig'

require'lspconfig'.pyls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.rls.setup{}
require'lspconfig'.html.setup{}

paq 'nvim-lua/completion-nvim'
paq 'steelsojka/completion-buffers'
vim.cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])
vim.cmd([[set completeopt=menu,menuone,noselect]])
vim.cmd([[
	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : '<Tab>'
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : '<S-Tab>'
]])

paq 'glepnir/lspsaga.nvim'
vim.cmd([[
	nnoremap <silent> <C-M>s :Lspsaga signature_help<CR>
	nnoremap <silent> <C-M>a :Lspsaga code_action<CR>
	nnoremap <silent> <C-M>k :Lspsaga hover_doc<CR>
	nnoremap <silent> <C-M>r :Lspsaga rename<CR>
	nnoremap <silent> <C-M>d :Lspsaga preview_definition<CR>
	nnoremap <silent> <C-M>e :Lspsaga show_line_diagnostics<CR>
	nnoremap <silent> <C-M>h :Lspsaga lsp_finder<CR>
]])
