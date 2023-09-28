require("ibl").setup {
    debounce = 100,
    whitespace = { highlight = { "Whitespace", "NonText" } },
    exclude = {
        filetypes = { "help", "terminal", "dashboard", "packer", "lspinfo", "TelescopePrompt",
            "TelescopeResults", "NvimTree", "Trouble", "Outline", "gitcommit", "gitrebase", "svn", "hgcommit" },
        buftypes = { "terminal", "nofile", "quickfix", "prompt" },
    }
}
