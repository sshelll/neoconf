vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd('syntax enable')
vim.cmd('filetype on')

vim.o.mouse = ''
vim.o.t_Co = '256'
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.signcolumn = 'yes'
vim.o.cursorline = true
vim.o.laststatus = 3
vim.o.encoding = 'utf-8'
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300

vim.o.ts = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.cmd('autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab')
vim.cmd('autocmd FileType go setlocal noexpandtab')

vim.o.ignorecase = true
vim.o.smartcase = true
