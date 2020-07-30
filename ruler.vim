function! GetFuncSymbol() abort
    let funcName = "" " get(b:, 'coc_current_function', '')
    if empty(funcName)
        return ''
    endif
    return funcName.'/'
endfunction

function! NearestMethodOrFunction() abort
    return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

set laststatus=0
set rulerformat=%40(builtin\ lsp%=%f\ %lL:%cC\ %)
