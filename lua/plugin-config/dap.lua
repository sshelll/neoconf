local dap = require('dap')
dap.adapters.delve = {
    type = 'server',
    port = '${port}',
    executable = {
        command = 'dlv',
        args = { 'dap', '-l', '127.0.0.1:${port}', '--check-go-version=false' },
    }
}

dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
        command = '/usr/local/bin/codelldb/adapter/codelldb',
        args = { '--port', '${port}' },
    }
}

dap.adapters.nlua = function(callback, config)
    callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })
end

require("dap").adapters["pwa-node"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
        command = "node",
        -- 💀 Make sure to update this path to point to your installation
        args = { "/Users/kayce/.config/nvim/plugin/js-debug/src/dapDebugServer.js", "${port}" },
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

dap.configurations.lua = {
    {
        type = 'nlua',
        request = 'attach',
        name = "Attach to running Neovim instance",
    }
}

require("dap").configurations.javascript = {
    {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
    },
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
dap.configurations.typescript = dap.configurations.javascript
