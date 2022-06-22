call plug#begin()
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
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
"Plug 'github/copilot.vim'
call plug#end()

" basic setting
syntax enable
set t_Co=256
set number
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
"colorscheme onedark
"let g:airline_theme='onedark'

"colorscheme github_dark
"let g:airline_theme = 'github'

"colorscheme onehalflight
"let g:rehash256 = 1
"let g:molokai_original = 1
"let g:material_theme_style = 'lighter'
"let g:material_terminal_italics = 1
"let g:airline_theme = 'ayu_light'

set background=dark
set termguicolors
let g:one_allow_italics=1
colorscheme one
let g:airline_theme='one'

"let g:github_colors_soft = 1
"set background=light
"let g:github_colors_block_diffmark = 0
"colorscheme github
"let g:airline_theme = 'github'

" another github theme
" " Example config in VimScript
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000',
  \ 'bg_search': '#7f7f7f'
\ }

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

" coc-json
nnoremap <silent> <leader>js :call CocAction("format")<CR>

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

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f :CocCommand editor.action.formatDocument<CR>
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

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
    \ 'go': ['golint', 'go vet', 'go fmt'],
    \ 'c': ['gcc'],
    \ 'python': ['pylint'],
    \ 'thrift': ['thriftcheck'],
    \ }
