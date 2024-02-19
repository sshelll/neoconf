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
                capabilities = capabilities,
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
                root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()),
            }
        end,
        ["sqls"] = function()
            lspconfig.sqls.setup {}
        end,
        ["biome"] = function()
            lspconfig.biome.setup {}
        end,
        ["tsserver"] = function()
            lspconfig.tsserver.setup {
                capabilities = capabilities,
                on_attach = function(client)
                    client.resolved_capabilities.document_formatting = false
                    client.resolved_capabilities.document_range_formatting = false
                end
            }
        end
    }
}
