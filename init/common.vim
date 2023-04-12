" toggleterm
nnoremap <leader>tt :FloatermNew<CR>

" Telescope
map <C-p> :Telescope live_grep<CR>
map <C-f> :BLines<CR>
let g:ackhighlight = 1

" Airline
let g:airline#extensions#tabline#enabled = 0

" NvimTree
nnoremap <F3> :NvimTreeToggle<CR>

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_width = 30
nnoremap <F4> :CocOutline<CR>
autocmd FileType go nmap <buffer> <F4> :TagbarToggle<CR>

" TrueZen
nnoremap <leader>za :TZAtaraxis<CR>
nnoremap <leader>zf :TZFocus<CR>

" TODO
nnoremap <leader>td :TodoTelescope<CR>

" lazygit
let g:lazygit_floating_window_winblend = 0                        " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9                " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0                     " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1                               " fallback to 0 if neovim-remote is not installed
nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <silent> <leader>bb :Git blame<CR>

" diffview
nnoremap <silent> ∂o :DiffviewOpen<CR>
nnoremap <silent> ∂c :DiffviewClose<CR>

" GoImports
"autocmd BufWritePre *.go :GoImports
