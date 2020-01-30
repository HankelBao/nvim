let g:mapleader = "\<Space>"
call which_key#register('<Space>', "g:leader_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

autocmd TermOpen * tnoremap <buffer> <ESC> <C-\><C-n>
autocmd FileType fzf tunmap <buffer> <ESC>

vnoremap > >gv
vnoremap < <gv

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
highlight Sneak guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE cterm=underline gui=underline,italic,bold


" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

let g:leader_map = {}

let g:leader_map['`'] = [':bprevious', 'last-buffer']
let g:leader_map[':'] = [':Commands', 'commands']
let g:leader_map[' '] = [':Files', 'switch-file']
let g:leader_map['w'] = {
	\ 'name' : '+windows' ,
	\ 'w' : ['<C-W>w'     , 'other-window']          , 
	\ 'd' : ['<C-W>c'     , 'delete-window']         ,
	\ '-' : ['<C-W>s'     , 'split-window-below']    ,
	\ '|' : ['<C-W>v'     , 'split-window-right']    ,
	\ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
	\ 'h' : ['<C-W>h'     , 'window-left']           ,
	\ 'j' : ['<C-W>j'     , 'window-below']          ,
	\ 'l' : ['<C-W>l'     , 'window-right']          ,
	\ 'k' : ['<C-W>k'     , 'window-up']             ,
	\ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
	\ 'J' : ['resize +5'  , 'expand-window-below']   ,
	\ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
	\ 'K' : ['resize -5'  , 'expand-window-up']      ,
	\ '=' : ['<C-W>='     , 'balance-window']        ,
	\ 's' : ['<C-W>s'     , 'split-window-below']    ,
	\ 'v' : ['<C-W>v'     , 'split-window-right']    ,
	\ '?' : ['Windows'    , 'fzf-window']            ,
	\ }
let g:leader_map['q'] = {
	\ 'name' : '+quit',
	\ 'q' : [':wqa', 'quit-editor'],
	\ 'Q' : [':wqa!', 'force-quit'],
	\ }
let g:leader_map['b'] = {
	\ 'name' : '+buffer',
	\ 'b': [':Buffer', 'select-buffer'],
	\ 'p': [':bprevious', 'prev-buffer'],
	\ 'n': [':bnext', 'next-buffer'],
	\ 'a': [':buffers', 'list-all-buffers'],
	\ }
let g:leader_map['t'] = {
	\ 'name' : '+toggle',
	\ 't' : [':call TermToggle(12)', 'toggle-terminal'],
	\ 'n' : [':CocCommand explorer', 'toggle-file-tree'],
	\ 'b' : [':ToggleBlameLine', 'toggle-blame-line'],
	\ }
let g:leader_map['f'] = {
	\ 'name' : '+file',
	\ 's': [':w', 'save-file'],
	\ 'f': [':Clap filer', 'open-file'],
	\ 'F': [':Files', 'find-file'],
	\ 'r': ['History', 'recent-files'],
	\ }
let g:leader_map['c'] = {
	\ 'name' : '+code',
	\ 'f': ['<Plug>(coc-format-selected)', 'format-selected-region'],
	\ 'F': [':Format', 'format-current-document'],
	\ 'q': ['<Plug>(coc-fix-current)', 'fix-current-line'],
	\ 'd': ['<Plug>(coc-definition)', 'goto-definition'],
	\ 'y': ['<Plug>(coc-type-definition)', 'type-definition'],
	\ 'i': ['<Plug>(coc-implementation)', 'goto-implementation'],
	\ 'I': [':OrganizeImports', 'organize-imports'],
	\ 'r': ['<Plug>(coc-references)', 'goto-references'],
	\ 'R': ['<Plug>(coc-rename)', 'rename-this-symbol'],
	\ 'k': ['', 'show-documentation'],
	\ '?': [':CocAction', 'list-all-actions'],
	\ }
let g:leader_map['d'] = {
	\ 'name' : '+diagnostics',
	\ 'o' : [':CocList --normal diagnostics', 'open-diagnostics'],
	\ 'n' : ['<Plug>(coc-diagnostic-next)', 'next-diagnostic'],
	\ 'p' : ['<Plug>(coc-diagnostic-prev)', 'prev-diagnostic'],
	\ }

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" nnoremap <silent> <leader>ck :call <SID>show_documentation()<CR>


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" use `:OR` for organize import of current buffer
command! -nargs=0 OrganizeImports   :call     CocAction('runCommand', 'editor.action.organizeImport')

let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen("zsh", {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction
