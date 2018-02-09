vmap <leader>jsb :'<,'>!js-beautify -i<CR>
autocmd FileType javascript noremap <buffer>  <leader>jsb :call JsBeautify()<CR>
autocmd FileType html noremap <buffer> <leader>htmlb :call HtmlBeautify()<CR>
autocmd FileType css noremap <buffer> <leader>cssb :call CSSBeautify()<CR>
