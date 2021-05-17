local paq = require'paq-nvim'.paq

paq 'lervag/vimtex'

vim.cmd([[
    let g:vimtex_view_general_viewer = 'sumatraPDF.exe'
    let g:vimtex_view_general_options = '-reuse-instance @pdf'
    let g:vimtex_view_general_options_latexmk = '-reuse-instance'
]])
