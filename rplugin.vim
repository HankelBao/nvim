" node plugins


" python3 plugins
call remote#host#RegisterPlugin('python3', 'C:/Users/hankelbao/.vim/plugged/denite.nvim/rplugin/python3/denite', [
      \ {'sync': v:true, 'name': '_denite_init', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_denite_start', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_denite_do_action', 'type': 'function', 'opts': {}},
     \ ])
call remote#host#RegisterPlugin('python3', 'C:/Users/hankelbao/.vim/plugged/deoplete.nvim/rplugin/python3/deoplete', [
      \ {'sync': v:false, 'name': '_deoplete_init', 'type': 'function', 'opts': {}},
     \ ])
call remote#host#RegisterPlugin('python3', 'C:/Users/hankelbao/.vim/plugged/nvim-typescript/rplugin/python3/nvim_typescript', [
      \ {'sync': v:false, 'name': 'TSExtractFunction', 'type': 'command', 'opts': {'range': ''}},
      \ {'sync': v:true, 'name': 'TSGetDocSymbolsFunc', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'TSGetWorkspaceSymbolsFunc', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSOnBufEnter', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSOnBufSave', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSCmRefresh', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSReloadProject', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'TSGetServerPath', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'TSGetVersion', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': 'TSGetServerStatus', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSDef', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSDefPreview', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSDoc', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSEditConfig', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSGetDocSymbols', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSImport', 'type': 'command', 'opts': {}},
      \ {'sync': v:true, 'name': 'TSComplete', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSRefs', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSRename', 'type': 'command', 'opts': {'nargs': '*'}},
      \ {'sync': v:false, 'name': 'TSRestart', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSSig', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSStart', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSStop', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSSyncErr', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSType', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'TSTypeDef', 'type': 'command', 'opts': {}},
     \ ])


" ruby plugins


" python plugins


