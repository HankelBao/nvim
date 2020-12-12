-- Load which-key
vim.cmd [[
packadd vim-which-key

let g:which_key_use_floating_win = 1
let g:mapleader = "\<Space>"
call which_key#register('<Space>', "g:leader_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
]]

-- Leader Map
local leader_map = {}

-- General
leader_map["'"] = {':ToggleTerm', 'toggle-terminal'}
leader_map[' '] = {':Telescope find_files', 'find-find'}
leader_map['-'] = {':LuaTreeToggle', 'toggle-file-tree'}
leader_map['+'] = {':MinimapToggle', 'toggle-minimap'}

-- Settings
leader_map['s'] = {}
leader_map['s']['name'] = '+settings'
leader_map['s']['t'] = {':Telescope colorscheme', 'change-colorscheme'}
leader_map['s']['r'] = {':Telescope reloader', 'reload-lua-module'}
leader_map['s']['o'] = {':Telescope vim_options', 'change-vim-options'}
leader_map['s']['c'] = {':Telescope commands', 'commands'}
leader_map['s']['h'] = {':Telescope command_hisotry', 'command-history'}
leader_map['s']['s'] = {':PackerSync', 'sync-packages'}
leader_map['s']['i'] = {':PackerInstall', 'install-packges'}

-- Edit
leader_map['e'] = {}
leader_map['e']['name'] = '+edit'
leader_map['e']['p'] = 'paste-from-system'
vim.cmd[[noremap <leader>ep <silent>"+p]]

-- Open
leader_map['o'] = {}
leader_map['o']['name'] = '+open'
leader_map['o']['r'] = {':Telescope oldfiles', 'recent-files'}
leader_map['o']['g'] = {':Telescope git_files', 'git-files'}
leader_map['o']['m'] = {':Telescope keymaps', 'key-mappings'}
leader_map['o']['h'] = {':Telescope help_tags', 'help'}
leader_map['o']['l'] = {':Telescope loclist', 'location-list'}

-- Project/Workspace
leader_map['p'] = {}
leader_map['p']['name'] = '+project/workspace'
leader_map['p']['t'] = {':Telescope tags', 'tags'}
leader_map['p']['g'] = {':Telescope live_grep', 'grep'}
leader_map['p']['s'] = {':Telescope lsp_workspace_symbols', 'symbols'}

-- Current File/Buffer
leader_map['f'] = {}
leader_map['f']['name'] = '+current-file/buffer'
leader_map['f']['s'] = {':w', 'save-file'}
leader_map['f']['l'] = {':Telescope treesitter', 'treesitter-symbols'}
leader_map['f']['j'] = {':Telescope lsp_document_symbols', 'lsp-symbols'}
leader_map['f']['t'] = {':Telescope current_buffer_tags', 'tags'}
leader_map['f']['f'] = {':Telescope current_buffer_fuzzy_find', 'fuzzy-find'}
leader_map['f']['g'] = {':Telescope grep_string', 'grep-string-under-cursor'}
leader_map['f']['c'] = {':Telescope git_bcommits', 'git-buffer-commits'}

-- Buffers/Tabs
leader_map['b'] = {
    name = '+buffers/tabs',
    b = {':Telescope buffers', 'find-buffer'},
    s = {':BufferLinePick', 'switch-buffer'},
    n = {':BufferLineCycleNext', 'next-buffer'},
    p = {':BufferLineCyclePrev', 'prev-buffer'}
}

leader_map['h'] = {
    name = '+help'
}

-- Lsp
leader_map['l'] = {}
leader_map['l']['name'] = '+lsp'
leader_map['l']['r'] = {':Telescope lsp_references', 'search-references'}
leader_map['l'][' '] = {':Telescope lsp_code_actions', 'code-actions'}
leader_map['l']['q'] = {':Telescope quickfix', 'quickfix'}

-- Debug
leader_map['d'] = {}
leader_map['d']['name'] = '+debug'
leader_map['d']['c'] = 'start/continue'
leader_map['d']['s'] = 'step-over'
leader_map['d']['i'] = 'step-into'
leader_map['d']['o'] = 'step-out'
leader_map['d']['b'] = 'toggle-breakpoint'
leader_map['d']['B'] = 'set-breakpoint-on-condition'
leader_map['d']['e'] = 'toggle-eval-expression/repl'
leader_map['d']['q'] = 'stop/quit'

vim.cmd [[
    nnoremap <silent> <leader>dc :lua require'dap'.continue()<CR>
    nnoremap <silent> <leader>ds :lua require'dap'.step_over()<CR>
    nnoremap <silent> <leader>di :lua require'dap'.step_into()<CR>
    nnoremap <silent> <leader>do :lua require'dap'.step_out()<CR>
    nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
    nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
    nnoremap <silent> <leader>de :lua require'dap'.repl.toggle()<CR>
    nnoremap <silent> <leader>dq :lua require'dap'.stop()<CR>
]]

-- Git
leader_map['g'] = {}
leader_map['g']['name'] = '+git'
leader_map['g']['c'] = {':Telescope git_commits', 'commits'}
leader_map['g']['b'] = {':Telescope git_branches', 'branches/checkout-on-enter'}
leader_map['g']['s'] = {':Telescope git_status', 'status/add-on-enter'}

vim.g.leader_map = leader_map
