" init.lua
lua require('init')

" vim script
for f in glob('~/.config/nvim/vimscript/*.vim', 0, 1)
    execute 'source' f
endfor

" copilot keymap
imap <silent><script><expr> <C-c> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
