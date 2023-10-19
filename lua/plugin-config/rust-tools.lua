local mason_home = vim.env.HOME .. '/.local/share/nvim/mason'
local codelldb_path = mason_home .. '/bin/codelldb'
local codelldb_lib_path = mason_home .. '/packages/codelldb/extension/lldb/lib/liblldb.dylib'

require("rust-tools").setup({
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, codelldb_lib_path)
    },
})
