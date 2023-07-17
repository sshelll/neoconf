call plug#begin()
Plug 'jbyuki/one-small-step-for-vimkind'
Plug 'sshelll/gott.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'paopaol/telescope-git-diffs.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'Mofiqul/vscode.nvim'
Plug 'nvimdev/dashboard-nvim'
Plug 'ahmedkhalf/project.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'bennypowers/splitjoin.nvim'
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'stevearc/dressing.nvim'
Plug 'mrjones2014/legendary.nvim'
Plug 'kkharji/sqlite.lua'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'wuelnerdotexe/vim-enfocado'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'solarnz/thrift.vim'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'github/copilot.vim'
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'cocopon/iceberg.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rhysd/clever-f.vim'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'sindrets/diffview.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
Plug 'folke/todo-comments.nvim'
Plug 'Pocco81/true-zen.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'rhysd/vim-go-impl'
Plug 'sebdah/vim-delve'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}
Plug 'fatih/molokai'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'kdheepak/lazygit.nvim'
Plug 'tpope/vim-fugitive'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'cormacrelf/vim-colors-github'
Plug 'voldikss/vim-floaterm'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'easymotion/vim-easymotion'
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'projekt0n/github-nvim-theme'
call plug#end()

"very start of init.vim
source ~/.config/nvim/entry.vim

lua require('plugin-config/devicons')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/nvim-treesitter-ctx')
lua require('plugin-config/nvim-treesitter-text-obj')
lua require('plugin-config/neoscroll')
lua require('plugin-config/todo-comments')
lua require('plugin-config/telescope')
lua require('plugin-config/nvimtree')
lua require('plugin-config/indent-blankline')
lua require('plugin-config/hlslens')
lua require('plugin-config/dap')
lua require('plugin-config/dap-ui')
lua require('plugin-config/dap-virtual-text')
lua require('plugin-config/barbar')
lua require('plugin-config/lualine')
lua require('plugin-config/legendary')
lua require('plugin-config/gitsigns')
lua require('plugin-config/illuminate')
lua require('plugin-config/project')
lua require('plugin-config/dashboard')
lua require('plugin-config/vscode-theme')
lua require('plugin-config/comment')
lua require('plugin-config/nvim-notify')
lua require('plugin-config/gott')

for f in glob('~/.config/nvim/init/*.vim', 0, 1)
    execute 'source' f
endfor

"very end of init.vim
source ~/.config/nvim/defer.vim
