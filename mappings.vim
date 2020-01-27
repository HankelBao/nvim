let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

nnoremap <silent> <space>: :

tnoremap <ESC> <C-\><C-n>

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Vim Commands
nnoremap <silent> <space>; :CocList vimcommands<CR>
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList --normal diagnostics<cr>
" Editors
nnoremap <silent> <space>ee :<C-u>CocList extensions<cr>
nnoremap <silent> <space>eq :wqa<CR>
nnoremap <silent> <space>es :edit ~/.config/nvim/init.vim<CR>
nnoremap <silent> <space>ei :PlugInstall<CR>
nnoremap <silent> <space>eu :PlugUpdate<CR>
" Quit
nnoremap <silent> <space>qq :wqa<CR>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Buffer
nnoremap <silent> <space>bb :<C-u>CocList buffers<cr>
" Toggle
nnoremap <silent> <space>tt :<C-u>call TermToggle(12)<cr>
nnoremap <silent> <space>tn :CocCommand explorer<CR>
" Files
nnoremap <silent> <space>fs :w<CR>
nnoremap <silent> <space>ff :edit 
nnoremap <silent> <space>fF :Files<CR>
nnoremap <silent> <space>fr :History<CR>

" Lsp functions
" Remap for rename current word
nmap <leader>mrn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>mf  <Plug>(coc-format-selected)
nmap <leader>mf  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>ma  <Plug>(coc-codeaction-selected)
nmap <leader>ma  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>mac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>mqf  <Plug>(coc-fix-current)

let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen("zsh", {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction
