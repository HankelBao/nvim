call minpac#add('nvim-treesitter/nvim-treesitter')
call minpac#add('neovim/nvim-lsp')
call minpac#add('nvim-lua/completion-nvim')
call minpac#add('nvim-lua/diagnostic-nvim')

call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('airblade/vim-rooter')
call minpac#add('rakr/vim-one')
call minpac#add('dracula/vim')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('psliwka/vim-smoothie')
call minpac#add('liuchengxu/vista.vim')
call minpac#add('puremourning/vimspector')


packloadall

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect

let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_virtual_text_prefix = ' '

call sign_define("LspDiagnosticsErrorSign", {"text" : "✘", "texthl" : "LspDiagnosticsError"})
call sign_define("LspDiagnosticsWarningSign", {"text" : "", "texthl" : "LspDiagnosticsWarning"})
call sign_define("LspDiagnosticsInformationSign", {"text" : "", "texthl" : "LspDiagnosticsInformation"})
call sign_define("LspDiagnosticsHintSign", {"text" : ":", "texthl" : "LspDiagnosticsHint"})

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

colorscheme dracula

let g:vim_markdown_conceal = 0

let g:rooter_change_directory_for_non_project_files = 'current'

let g:vista_default_executive = 'nvim_lsp'
