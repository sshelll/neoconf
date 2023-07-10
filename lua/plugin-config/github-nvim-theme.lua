require('github-theme').setup({
    options = {
        styles = {
            comments = 'italic',
            keywords = 'bold',
            types = 'italic,bold',
            strings = 'italic,bold',
            numbers = 'italic,bold',
        }
    }
})
vim.cmd('colorscheme github_light')
