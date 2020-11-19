packadd nvim-treesitter
packadd nvim-lspconfig
packadd completion-nvim
packadd diagnostic-nvim
packadd editorconfig-vim
packadd vim-rooter
packadd vim-devicons
packadd vim-smoothie
" packadd vimspector

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect

let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_virtual_text_prefix = ' '

" call sign_define("LspDiagnosticsErrorSign", {"text" : "✘", "texthl" : "LspDiagnosticsError"})
" call sign_define("LspDiagnosticsWarningSign", {"text" : "", "texthl" : "LspDiagnosticsWarning"})
" call sign_define("LspDiagnosticsInformationSign", {"text" : "", "texthl" : "LspDiagnosticsInformation"})
" call sign_define("LspDiagnosticsHintSign", {"text" : ":", "texthl" : "LspDiagnosticsHint"})

command! WriteQuitAll wqa
command! Save w
command Wd write|bdelete

set termguicolors
set noshowmode
set hidden
set nobackup
set nowrap
set nowritebackup
set cmdheight=1

set inccommand=split
set number
set relativenumber
set numberwidth=2

let g:vim_markdown_conceal = 0
let g:rooter_change_directory_for_non_project_files = 'current'
let g:vista_default_executive = 'nvim_lsp'
