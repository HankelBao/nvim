local dap = require'dap'

local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

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

dap.adapters.python = {
  type = 'executable',
  command = '/usr/bin/python',
  args = { '-m', 'debugpy.adapter' }
}

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "Launch file",
    program = "${file}",
    console = "integratedTerminal",
    pythonPath = function(_)
      return '/usr/bin/python'
    end,
  },
}

dap.configurations.cpp = {
  {
    type = 'cpp',
    name = "Launch",
    request = "launch",
    -- program = table.remove(args, 1),
    args = args,
    cwd = vim.fn.getcwd(),
    environment = {},
    externalConsole = true,
    MIMode = mi_mode or "lldb",
    MIDebuggerPath = mi_debugger_path
  },
}

-- Enable virutal text, requires theHamsta/nvim-dap-virutal-text
vim.g.dap_virtual_text = true
