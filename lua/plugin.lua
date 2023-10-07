vim.cmd('autocmd User PackerComplete lua require("notify").notify("packer completed")')

return require('packer').startup({
    function(use)
        use {
            'linrongbin16/lsp-progress.nvim',
            requires = { 'nvim-tree/nvim-web-devicons' },
            config = function()
                require('lsp-progress').setup()
            end
        }
        use 'gbprod/yanky.nvim'
        use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }
        use "chip/telescope-software-licenses.nvim"
        use {
            'Wansmer/treesj',
            requires = { 'nvim-treesitter' },
            config = function()
                require('treesj').setup({ --[[ your config ]] })
            end,
        }
        use { 'ashfinal/qfview.nvim', config = function() require('qfview').setup() end }
        use 'tpope/vim-dispatch'
        use 'wbthomason/packer.nvim'
        use { 'phaazon/hop.nvim', config = function() require('hop').setup() end }
        use 'jbyuki/one-small-step-for-vimkind'
        use { 'sshelll/gott.nvim', config = function() require('gott').setup() end }
        use 'sshelll/telescope-gott.nvim'
        use 'rcarriga/nvim-notify'
        use 'nvim-telescope/telescope-dap.nvim'
        use 'paopaol/telescope-git-diffs.nvim'
        use 'numToStr/Comment.nvim'
        use 'Mofiqul/vscode.nvim'
        use { 'nvimdev/dashboard-nvim', requires = { 'nvim-tree/nvim-web-devicons' } }
        use 'ahmedkhalf/project.nvim'
        use 'RRethy/vim-illuminate'
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        use 'lewis6991/gitsigns.nvim'
        use 'nvim-telescope/telescope-ui-select.nvim'
        use 'stevearc/dressing.nvim'
        use 'mrjones2014/legendary.nvim'
        use 'kkharji/sqlite.lua'
        use 'theHamsta/nvim-dap-virtual-text'
        use 'rcarriga/nvim-dap-ui'
        use 'mfussenegger/nvim-dap'
        use { 'folke/tokyonight.nvim', branch = 'main' }
        use 'kevinhwang91/nvim-hlslens'
        use 'lukas-reineke/indent-blankline.nvim'
        use 'github/copilot.vim'
        use 'aklt/plantuml-syntax'
        use 'weirongxu/plantuml-previewer.vim'
        use 'junegunn/fzf.vim'
        use { 'junegunn/fzf', run = './install --all' }
        use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
        use 'cocopon/iceberg.vim'
        use 'rhysd/clever-f.vim'
        use 'tom-anders/telescope-vim-bookmarks.nvim'
        use 'MattesGroeger/vim-bookmarks'
        use 'sindrets/diffview.nvim'
        use 'romgrk/barbar.nvim'
        use 'nvim-lua/plenary.nvim'
        use {
            'nvim-telescope/telescope.nvim', branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use 'folke/todo-comments.nvim'
        use 'Pocco81/true-zen.nvim'
        use 'karb94/neoscroll.nvim'
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
        use 'nvim-treesitter/nvim-treesitter-context'
        use 'nvim-treesitter/nvim-treesitter-textobjects'
        use 'nvim-lualine/lualine.nvim'
        use 'kyazdani42/nvim-tree.lua'
        use 'rhysd/vim-go-impl'
        use 'sebdah/vim-delve'
        use 'preservim/tagbar'
        use 'neovim/nvim-lspconfig'
        use "williamboman/mason.nvim"
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-nvim-lua'
        use 'saadparwaiz1/cmp_luasnip'
        use 'simrat39/symbols-outline.nvim'
        use 'folke/trouble.nvim'
        use 'windwp/nvim-autopairs'
        use({
            "L3MON4D3/LuaSnip",
            tag = "v2.*",
            run = "make install_jsregexp"
        })
        use 'nvim-tree/nvim-web-devicons'
        use 'kdheepak/lazygit.nvim'
        use 'tpope/vim-fugitive'
        use 'voldikss/vim-floaterm'
        use { 'mg979/vim-visual-multi', branch = 'master' }
    end,
})
