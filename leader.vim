let g:mapleader = "\<Space>"
call which_key#register('<Space>', "g:leader_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

let g:leader_map = {}

let g:leader_map['\'] = [':bprevious', 'last-buffer']
let g:leader_map[':'] = [':CocList vimcommands', 'commands']
let g:leader_map[' '] = [':CocList files', 'switch-buffer']
let g:leader_map['-'] = [':CocList symbols', 'jump-to-symbol']
let g:leader_map['x'] = [':CocCommand actions.open', 'actions-menu']
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
let g:leader_map['j'] = {
	\ 'name' : '+jump',
	\ 't' : [':CocList tags', 'jump-to-tag-in-buffer'],
	\ 'T' : [':CocList tags', 'jump-to-tag-in-project'],
    \ 'l' : [':CocList lines', 'jump-to-line-in-buffer'],
    \ 's' : [':CocList grep', 'ripgrep-search'],
	\ }
let g:leader_map['b'] = {
	\ 'name' : '+buffer',
	\ 'b': [':CocList buffers', 'select-buffer'],
	\ 'p': [':bprevious', 'prev-buffer'],
	\ 'n': [':bnext', 'next-buffer'],
	\ 'a': [':buffers', 'list-all-buffers'],
	\ }
let g:leader_map['t'] = {
	\ 'name' : '+toggle',
	\ 't' : [':call TermToggle(12)', 'toggle-terminal'],
    \ 'f' : ['::Fern . -drawer', 'open-fern'],
	\ 'n' : [':CocCommand explorer', 'toggle-file-tree'],
	\ 'b' : [':ToggleBlameLine', 'toggle-blame-line'],
	\ }
let g:leader_map['f'] = {
	\ 'name' : '+file',
	\ 's': [':w', 'save-file'],
	\ 'o': [':CocList files', 'open-file'],
	\ 'f': [':Clap filer', 'open-file'],
	\ 'F': [':Files', 'find-file'],
	\ 'r': [':CocList mru', 'recent-files'],
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
