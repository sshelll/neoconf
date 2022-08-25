" highlightedyank
let g:highlightedyank_highlight_duration = 5000

" toggleterm
nnoremap <leader>tt :FloatermNew<CR>

" ack
"cnoreabbrev Ack Ack!
map <C-p> :Ack! 
let g:ackhighlight = 1

" NERDTree
nnoremap <F3> :NERDTreeToggle<CR>

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_width = 30
nnoremap <F4> :Tagbar<CR>

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

" GoFmt
autocmd BufWritePre *.go :GoFmt
