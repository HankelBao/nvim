" HankelBao
" Mappings for Vim
" Including those for plugins

let mapleader=","

" Shortcuts{
	noremap ' :!
	tnoremap <ESC> <C-\><C-n>
	noremap <Leader><space> :
	noremap <Leader>o :Denite file_rec<CR>
	noremap <Leader>b :Denite buffer<CR>
	noremap <Leader>e :edit 
	noremap <Leader>c :cd 
	noremap <Leader>q :q<CR>
	noremap <Leader>s :w<CR>
	noremap <Leader>t :terminal<CR>
	noremap <Leader>p :tabp<CR>
	noremap <Leader>n :tabn<CR>
	noremap <Leader>h <C-W>h
	noremap <Leader>j <C-W>j
	noremap <Leader>k <C-W>k
	noremap <Leader>l <C-W>l
" }

" Windows {
	noremap <Leader>w <C-W>
" }

" Tabs {
	noremap <Leader>1 :tabn 1<CR>
	noremap <Leader>2 :tabn 2<CR>
	noremap <Leader>3 :tabn 3<CR>
	noremap <Leader>4 :tabn 4<CR>
	noremap <Leader>5 :tabn 5<CR>
	noremap <Leader>6 :tabn 6<CR>
	noremap <Leader>7 :tabn 7<CR>
	noremap <Leader>8 :tabn 8<CR>
	noremap <Leader>9 :tabn 9<CR>
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
	noremap <Leader>ij :call JsBeautify()<cr>
	noremap <Leader>is :call JsonBeautify()<cr>
	noremap <Leader>ix :call JsxBeautify()<cr>
	noremap <Leader>ih :call HtmlBeautify()<cr>
	noremap <Leader>ic :call CSSBeautify()<cr>
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
		noremap <Leader>um :tabedit ~/.config/nvim/mapping.vim<CR>
		noremap <Leader>up :tabedit ~/.config/nvim/plug.vim<CR>
		noremap <Leader>ub :tabedit ~/.config/nvim/basic.vim<CR>
	endif
" }
