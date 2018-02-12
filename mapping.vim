" HankelBao
" Mappings for Vim
" Including those for plugins

let mapleader=","

" Shortcuts{
	tnoremap <ESC> <C-\><C-n>
	noremap <Leader><space> :
	noremap <Leader>o :Denite file_rec<CR>
	noremap <Leader>b :Denite buffer<CR>
	noremap <Leader>e :edit 
	noremap <Leader>c :cd 
	noremap <Leader>q :q<CR>
" }

" Windows {
	noremap <Leader>w <C-W>
	noremap <Leader>1 :1wincmd w<CR>
	noremap <Leader>2 :2wincmd w<CR>
	noremap <Leader>3 :3wincmd w<CR>
	noremap <Leader>4 :4wincmd w<CR>
	noremap <Leader>5 :5wincmd w<CR>
	noremap <Leader>6 :6wincmd w<CR>
	noremap <Leader>7 :7wincmd w<CR>
	noremap <Leader>8 :8wincmd w<CR>
	noremap <Leader>9 :9wincmd w<CR>
" }

" Views {
	try
		let g:lmap.v = { 'name' : 'View' }
	catch
	endtry
	noremap <Leader>vn :NERDTreeToggle<CR>
	noremap <Leader>vt :TagbarToggle<CR>
" }

" Files {
	try
		let g:lmap.f = { 'name': 'Files' }
	catch
	endtry
	noremap <Leader>fe :edit 
	noremap <Leader>fs :w!<CR>
	noremap <Leader>fq :qa<CR>
	noremap <Leader>ff :wqa<CR>
" }

" Edit {
	try
		let g:lmap.i = { 'name' : 'Edit' }
	catch
	endtry
	noremap <Leader>id !!date +\%F<CR>
	noremap <Leader>it :call feedkeys("i" . strftime('%c'))<CR>
" }

" Git {
	try
		let g:lmap.g = { 'name' : 'Git' }
	catch
	endtry
	noremap <Leader>gs :Gstatus<CR>
	noremap <Leader>gc :Gcommit<CR>
	noremap <Leader>gp :Gpush<CR>
	noremap <Leader>gb :Git branch<CR>
	noremap <Leader>ga :Git add --a<CR>
	noremap <Leader>go :Git checkout 
" }

" Update {
	try
		let g:lmap.u = { 'name' : 'Update' }
	catch
	endtry
	noremap <Leader>us :source %<CR>
	noremap <Leader>ui :PlugInstall<CR>
	noremap <Leader>uu :PlugUpdate<CR>
	noremap <Leader>ud :PlugClean<CR>
	noremap <Leader>uc :Denite colorscheme<CR>
	if has('win64') || has('win32')
		noremap <Leader>um :tabedit C:\Users\hankelbao\AppData\Local\nvim\mapping.vim<CR>
		noremap <Leader>up :tabedit C:\Users\hankelbao\AppData\Local\nvim\plug.vim<CR>
		noremap <Leader>ub :tabedit C:\Users\hankelbao\AppData\Local\nvim\basic.vim<CR>
	else
		noremap <Leader>um :tabedit ~/dotfiles/vim/.vim-config/mapping.vim<CR>
		noremap <Leader>up :tabedit ~/dotfiles/vim/.vim-config/plug.vim<CR>
		noremap <Leader>ub :tabedit ~/dotfiles/vim/.vim-config/basic.vim<CR>
	endif
" }
