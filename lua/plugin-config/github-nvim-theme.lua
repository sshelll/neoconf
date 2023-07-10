require('github-theme').setup({
    options = {
        styles = {
            comments = 'italic',
            keywords = 'bold',
            types = 'italic,bold',
        },
        modules = {
            coc = true,
            dapui = true,
            dashboard = true,
            diagnostics = true,
            fzf = true,
            gitgutter = true,
            gitsigns = true,
            indent_blankline = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            treesitter_context = true,
            whichkey = true,
        },
    }
})
vim.cmd('colorscheme github_light')
