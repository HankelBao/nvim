lua require('core.plugins')

runtime! vimscript/completion.vim
runtime! vimscript/edit.vim
runtime! vimscript/theme.vim

runtime! vimscript/files.vim
runtime! vimscript/neovide.vim
runtime! vimscript/ruler.vim

runtime! vimscript/latex.vim
runtime! vimscript/markdown.vim

lua require('lang.lsp')
lua require('lang.debug')
