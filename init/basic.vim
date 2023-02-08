syntax enable
set t_Co=256
set number
set termguicolors
set signcolumn=yes
"set cursorline cursorcolumn
set cursorline
:filetype on

set ts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smartindent
set mouse=

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType go setlocal noexpandtab
autocmd BufWinEnter *.thrift :set filetype=idl

nnoremap <F12> :vertical res+3<CR>
nnoremap <F11> :vertical res-1<CR>
nnoremap p "0p
nnoremap <leader>p p
vnoremap <leader>y "+y
nnoremap <D-v> "+p
