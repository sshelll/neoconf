local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "gopls",
        "bashls",
        "rust_analyzer",
        "jdtls",
        "bufls",
    },
    automatic_installation = false,
    handlers = {
        function(server_name)
            lspconfig[server_name].setup {
                capabilities = capabilities
            }
        end,
        ["gopls"] = function()
            lspconfig.gopls.setup {
                cmd = { "gopls", "serve" },
                settings = {
                    gopls = {
                        directoryFilters = { "-vendor" },
                    },
                },
            }
        end,
        ["lua_ls"] = function()
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },
                        },
                    },
                },
            }
        end,
        ["jdtls"] = function() end,
        ["sqlls"] = function()
            lspconfig.sqlls.setup {
                cmd = { "sql-language-server", "up", "--method", "stdio" },
                filetypes = { "sql" },
            }
        end,
        ["sqls"] = function()
            lspconfig.sqls.setup {}
        end
    }
}
