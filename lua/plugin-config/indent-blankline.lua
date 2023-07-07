vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.g.indentLine_fileTypeExclude = { "help", "terminal", "dashboard", "packer", "lspinfo", "TelescopePrompt",
    "TelescopeResults", "NvimTree", "Trouble", "Outline", "gitcommit", "gitrebase", "svn", "hgcommit" }

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
