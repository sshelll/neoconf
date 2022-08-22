call plug#begin()
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
Plug 'rhysd/vim-go-impl'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'sebdah/vim-delve'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}
Plug 'fatih/molokai'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'ellisonleao/glow.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-fugitive'
Plug 'buoto/gotests-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'cormacrelf/vim-colors-github'
Plug 'projekt0n/github-nvim-theme'
Plug 'voldikss/vim-floaterm'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'projekt0n/github-nvim-theme'
"Plug 'github/copilot.vim'
call plug#end()

lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/neoscroll')

" basic setting
syntax enable
set t_Co=256
set number
set nohlsearch
set termguicolors

"set cursorline cursorcolumn
set cursorline
:filetype on

set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType go setlocal noexpandtab

" common
nnoremap <F12> :vertical res+3<CR>
nnoremap <F11> :vertical res-1<CR>
nnoremap p "0p
nnoremap <leader>p p

vnoremap <leader>y "+y

"startify
let g:startify_custom_header = [
			\ '   ██╗  ██╗███████╗██╗     ██╗      ██████╗        ███████╗     ██╗██╗       ██╗',
			\ '   ██║  ██║██╔════╝██║     ██║     ██╔═══██╗       ██╔════╝     ██║██║       ██║',
			\ '   ███████║█████╗  ██║     ██║     ██║   ██║       ███████╗     ██║██║       ██║',
			\ '   ██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ╚════██║██   ██║██║       ╚═╝',
			\ '   ██║  ██║███████╗███████╗███████╗╚██████╔╝▄█╗    ███████║╚█████╔╝███████╗  ██╗',
			\ '   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝    ╚══════╝ ╚════╝ ╚══════╝  ╚═╝',
			\ ]

let g:startify_custom_footer = [
			\ '	F-117A Nighthawk "Stealth Fighter"                                             ',
			\ '                                                                                    ',
			\ '                                _                                                   ',
			\ '                               | \                                                  ',
			\ '                              _|  \______________________________________           ',
			\ '                             - ______        ________________          \_`,         ',
			\ '    _  _                   -(_______            -=    -=        USAF       )        ',
			\ '   | || | _                         `--------=============----------------`   --JB  ',
			\ '  -| || || |                                  -   -                                 ',
			\ '   | || || |-                                -   -                                  ',
			\ '    \_  || |                       `   . .  -  -                                    ',
			\ '      |  _/                           .*` .* ;`*,`.,                                ',
			\ '     -| | \                           `, ,`.*.*. *                                  ',
			\ '  ____|_|-______________________________*  * ` ^ *________________________________  ',
			\ '           IRAQ                                                                     ',
			\ ]

" yank highlight
let g:highlightedyank_highlight_duration = 5000

"fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
nnoremap <F5> :Windows<CR>
nnoremap <C-f> :BLines<CR>

" toggleterm
nnoremap <leader>tt :FloatermNew<CR>

" ack
"cnoreabbrev Ack Ack!
map <C-p> :Ack! 
let g:ackhighlight = 1

" Load the colorscheme

" one dark thme
"let g:one_allow_italics=1
"colorscheme one
"let g:airline_theme='one'

let g:github_comment_style = "NONE"
let g:github_keyword_style = "NONE"
let g:github_function_style = "NONE"
let g:github_variable_style = "NONE"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]
let g:airline_theme = "github"
let g:github_dark_sidebar = 0

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000',
  \ 'bg_search': '#7f7f7f'
\ }
colorscheme github_dark

" NERDTree
nnoremap <F3> :NERDTreeToggle<CR>

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_width = 30
nnoremap <F4> :Tagbar<CR>

" lazygit
let g:lazygit_floating_window_winblend = 0                        " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9                " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0                     " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1                               " fallback to 0 if neovim-remote is not installed
nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <silent> <leader>bb :Git blame<CR>

" coc
highlight CocMenuSel ctermbg=8 guibg=#494f59
highlight NormalFloat guifg=#c9d1d9 guibg=#363e45
highlight CursorLine guibg=#363c47

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" vim-go
"let g:go_def_mode = 'gopls' 
"let g:go_fmt_command = 'goimports'
"let g:goimports = 1
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_generate_tags = 1
"let g:godef_split = 1
"let g:go_fmt_autosave = 1 
let g:go_def_mapping_enabled = 0


" Open :GoDeclsDir with ctrl-g
"nnoremap <C-g> :GoDeclsDir<cr>
"imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

"nnoremap fmt :GoFmt<cr>
"nnoremap def :GoDef<cr>
"nnoremap impl :GoImplements<cr>
"nnoremap call :GoCallers<cr>

autocmd BufWinEnter *.thrift :set filetype=idl

" godef
"autocmd FileType go nnoremap <buffer> gd :call GodefUnderCursor()<cr>
"autocmd FileType go nnoremap <buffer> <C-]> :call GodefUnderCursor()<cr>

" ctags
nnoremap <C-]> :execute "vertical ptag " . expand("<cword>")<CR>
set previewheight=90

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f :CocCommand editor.action.formatDocument<CR>
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufWritePre *.go :GoFmt

" ale-setting
let g:ale_set_highlights = 1
let g:ale_set_quickfix = 1

"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']

"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'Error ✗'
let g:ale_echo_msg_warning_str = 'Warning ⚡'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"打开文件时不进行检查
let g:ale_lint_on_enter = 1
let g:ale_thrift_thriftcheck_executable = 1

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)

"<Leader>s 触发/关闭语法检查
" nmap <Leader>l :ALEToggle<CR>
"
"<Leader>d 查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
    \ 'go': ['golint', 'go tool vet', 'go fmt'],
    \ 'c': ['gcc'],
    \ 'python': ['pylint'],
    \ 'thrift': ['thriftcheck'],
    \ }
