function! GetFuncSymbol() abort
    let funcName = "" " get(b:, 'coc_current_function', '')
    if empty(funcName)
        return ''
    endif
    return funcName.'/'
endfunction

set laststatus=0
set rulerformat=%40(%{coc#status()}%=%{GetFuncSymbol()}%f\ %lL:%cC\ %)
