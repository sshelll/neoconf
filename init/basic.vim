syntax enable
set t_Co=256
set number
set relativenumber
set termguicolors
set signcolumn=yes
set cursorline
:filetype on

set ts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smartindent
set mouse=

set ignorecase
set smartcase

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType go setlocal noexpandtab
