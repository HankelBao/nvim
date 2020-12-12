vim.g.dap_virtual_text = true

-- require('dap-python').setup('/usr/bin/python3')

local dap = require 'dap'

-- Python
dap.adapters.python = {
  type = 'executable';
  command = '/usr/bin/python3';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    console= "integratedTerminal"; --one out of "internalConsole", "integratedTerminal", "externalConsole"
    pythonPath = "/usr/bin/python3";
  },
}

-- C/Cpp/Rust
dap.adapters.cpp = {
  type = 'executable',
  attach = {
    pidProperty = "pid",
    pidSelect = "ask"
  },
  command = 'lldb-vscode',
  env = {
    LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES"
  },
  name = "lldb"
}

vim.cmd [[
    command! -complete=file -nargs=* DebugC lua require"lang.debug_c".start_c_debugger({<f-args>}, "gdb")
]]
vim.cmd [[
    command! -complete=file -nargs=* DebugRust lua require"lang.debug_c".start_c_debugger({<f-args>}, "gdb", "rust-gdb")
]]
