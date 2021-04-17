local paq = require'paq-nvim'.paq

paq 'tikhomirov/vim-glsl'
vim.cmd([[autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl]])
