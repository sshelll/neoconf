call plug#begin()
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
Plug 'mhinz/vim-startify'
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
Plug 'nvim-lualine/lualine.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mattn/vim-goimpl'
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
Plug 'projekt0n/github-nvim-theme', { 'branch': '0.0.x' }
call plug#end()

lua require('plugin-config/devicons')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/neoscroll')
lua require('plugin-config/todo-comments')
lua require('plugin-config/telescope')
lua require('plugin-config/nvimtree')
lua require('plugin-config/indent-blankline')
lua require('plugin-config/hlslens')
lua require('plugin-config/github-nvim-theme')
lua require('plugin-config/dap')
lua require('plugin-config/dap-ui')
lua require('plugin-config/dap-virtual-text')
lua require('plugin-config/barbar')
lua require('plugin-config/lualine')
lua require('plugin-config/legendary')
lua require('plugin-config/gitsigns')

for f in glob('~/.config/nvim/init/*.vim', 0, 1)
    execute 'source' f
endfor
