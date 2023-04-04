vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>dq', function() require('dap').disconnect() end)
vim.keymap.set('n', '<leader>dt', function() require('dap').run_to_cursor() end)
vim.keymap.set('n', '<leader>dr', function() require('dap').clear_breakpoints() end)
vim.keymap.set('n', '<leader>ds', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>do', function() require('dap').step_out() end)
vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>da', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('v', '<leader>de', function() require('dapui').eval() end)

local dap = require('dap')
dap.adapters.delve = {
    type = 'server',
    port = '${port}',
    executable = {
        command = 'dlv',
        args = { 'dap', '-l', '127.0.0.1:${port}', '--check-go-version=false' },
    }
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
    {
        type = "delve",
        name = "Debug",
        request = "launch",
        program = "${file}"
    },
    -- works with go.mod packages and sub packages
    {
        type = "delve",
        name = "Debug Test",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    }
}
