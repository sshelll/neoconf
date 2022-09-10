call plug#begin()
Plug 'sindrets/diffview.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'folke/todo-comments.nvim'
Plug 'Pocco81/true-zen.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
"Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'machakann/vim-highlightedyank'
Plug 'rhysd/vim-go-impl'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'sebdah/vim-delve'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}
Plug 'fatih/molokai'
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
lua require('plugin-config/todo-comments')
lua require('plugin-config/telescope')
lua require('plugin-config/nvimtree')

for f in glob('~/.config/nvim/init/*.vim', 0, 1)
    execute 'source' f
endfor

source ~/.config/nvim/init/defer.vim
