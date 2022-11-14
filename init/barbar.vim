" NOTE: key mappings below for macOS only

" Move to previous/next
nnoremap <silent> ≤ <Cmd>BufferPrevious<CR>
nnoremap <silent> ≥ <Cmd>BufferNext<CR>

" Goto buffer in position...
nnoremap <silent> ¡ <Cmd>BufferGoto 1<CR>
nnoremap <silent> ™ <Cmd>BufferGoto 2<CR>
nnoremap <silent> £ <Cmd>BufferGoto 3<CR>
nnoremap <silent> ¢ <Cmd>BufferGoto 4<CR>
nnoremap <silent> ∞ <Cmd>BufferGoto 5<CR>
nnoremap <silent> § <Cmd>BufferGoto 6<CR>
nnoremap <silent> ¶ <Cmd>BufferGoto 7<CR>
nnoremap <silent> • <Cmd>BufferGoto 8<CR>
nnoremap <silent> ª <Cmd>BufferGoto 9<CR>
nnoremap <silent> º <Cmd>BufferLast<CR>

"Alt-q
nnoremap <silent> œ <Cmd>BufferClose<CR> 
"Alt-p
nnoremap <silent> π <Cmd>BufferPin<CR>
"Alt-c
nnoremap <silent> ç <Cmd>BufferCloseAllButCurrentOrPinned<CR>

let bufferline = get(g:, 'bufferline', {})
let bufferline.icon_pinned = '車'