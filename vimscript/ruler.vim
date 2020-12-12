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

" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

set laststatus=2
set rulerformat=%40(%{LspStatus()}%=%f\ %lL:%cC\ %)
