require('github-theme').setup({
  options = {
    transparent = false,
    hide_end_of_buffer = true,
    hide_nc_statusline = true,
    styles = {
      comments = 'NONE',
      functions = 'NONE',
      keywords = 'NONE',
      variables = 'NONE',
    },
    darken = {
      floats = true,
      sidebars = {
        enable = true,
        list = { 'qf', 'vista_kind', 'terminal', 'packer' },
      },
    },
  },
  colors = { hint = 'orange', error = '#ff0000' },
})

vim.cmd('colorscheme github_dark')
