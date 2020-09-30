" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
" let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
" let g:mkdp_auto_close = 1
call minpac#add('iamcco/markdown-preview.nvim', { 'type': 'opt', 'do': {->mkdp#util#install()}})
packadd markdown-preview

let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:tex_conceal = ""

set conceallevel=1

"   \   'macros': {
"   \       '\V': '{\overrightarrow{\rm #1}}'
"   \   }

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {
    \   'globalGroup': v:true,
    \ },
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }
