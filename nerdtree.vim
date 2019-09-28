let g:NERDTreeDirArrowExpandable = '⊕'
let g:NERDTreeDirArrowCollapsible = '⊗'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1
let g:NERDTreeChDirMode = 2

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
