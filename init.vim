lua require('plugins')

runtime! vimscript/completion.vim
runtime! vimscript/edit.vim
runtime! vimscript/theme.vim

runtime! vimscript/files.vim
runtime! vimscript/leader.vim
runtime! vimscript/neovide.vim
" runtime! ui/statusline.vim
runtime! vimscript/ruler.vim

runtime! vimscript/latex.vim
runtime! vimscript/markdown.vim

lua require('treesitter')
lua require('lsp')
