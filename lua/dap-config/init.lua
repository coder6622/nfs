local dap = require("dap")
local dapui = require("dapui")

-- dap.adapters.codelldb = {
--   type = 'executable',
--   command = '/home/coder6622/.local/share/nvim/mason/packages/codelldb/codelldb', -- adjust as needed, must be absolute path
--   name = 'codelldb'
-- }
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.fn.stdpath("data") .. '/mason/bin/OpenDebugAD7'
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true
  }, {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end
  }
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

dapui.setup({
  expand_lines = true,
  icons = { expanded = "", collapsed = "", circular = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t"
  },
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.33 }, { id = "breakpoints", size = 0.17 },
        { id = "stacks", size = 0.25 }, { id = "watches", size = 0.25 }
      },
      size = 0.33,
      position = "right"
    }, {
      elements = { { id = "repl", size = 0.45 }, { id = "console", size = 0.55 } },
      size = 0.27,
      position = "bottom"
    }
  },
  floating = {
    max_height = 0.9,
    max_width = 0.5, -- Floats will be treated as percentage of your screen.
    border = vim.g.border_chars, -- Border style. Can be 'single', 'double' or 'rounded'
    mappings = { close = { "q", "<Esc>" } }
  }
})

vim.fn.sign_define("DapBreakpoint",
  { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
