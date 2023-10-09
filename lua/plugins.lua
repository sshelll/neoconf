local pluglist = {
    {
        "olexsmir/gopher.nvim",
        dependencies = { -- dependencies
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
    {
        'linrongbin16/lsp-progress.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lsp-progress').setup()
        end
    },
    {
        'gbprod/yanky.nvim',
        event = 'VeryLazy',
    },
    {
        "ellisonleao/glow.nvim",
        config = function() require("glow").setup() end,
        lazy = true,
    },
    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter' },
        config = function()
            require('treesj').setup({ --[[ your config ]] })
        end,
    },
    {
        'ashfinal/qfview.nvim',
        config = function() require('qfview').setup() end,
        event = 'VeryLazy',
    },
    {
        'tpope/vim-dispatch',
        lazy = true,
    },
    {
        'phaazon/hop.nvim',
        config = function() require('hop').setup() end,
        event = 'VeryLazy',
    },
    {
        'sshelll/gott.nvim',
        config = function() require('gott').setup() end,
        event = 'VeryLazy',
    },
    {
        'sshelll/telescope-gott.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        lazy = true,
    },
    {
        'rcarriga/nvim-notify',
        lazy = false,
    },
    {
        'nvim-telescope/telescope-dap.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        lazy = true,
    },
    {
        'paopaol/telescope-git-diffs.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        lazy = true,
    },
    {
        'numToStr/Comment.nvim',
        event = 'VeryLazy',
    },
    {
        'Mofiqul/vscode.nvim',
        lazy = true,
    },
    {
        'nvimdev/dashboard-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'ahmedkhalf/project.nvim',
        lazy = false,
    },
    {
        'RRethy/vim-illuminate',
        event = 'VeryLazy',
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        dependencies = { 'nvim-telescope/telescope.nvim' }
    },
    {
        'lewis6991/gitsigns.nvim',
        event = 'VeryLazy',
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' }
    },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
    },
    {
        'mrjones2014/legendary.nvim',
        lazy = false,
    },
    {
        'kkharji/sqlite.lua',
        lazy = false,
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        dependencies = { 'mfussenegger/nvim-dap' },
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap' }
    },
    {
        'mfussenegger/nvim-dap',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        branch = 'main',
        priority = 1000,
    },
    {
        'kevinhwang91/nvim-hlslens',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'github/copilot.vim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'aklt/plantuml-syntax',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'weirongxu/plantuml-previewer.vim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'cocopon/iceberg.vim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'rhysd/clever-f.vim',
        event = 'VeryLazy',
    },
    {
        'tom-anders/telescope-vim-bookmarks.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'MattesGroeger/vim-bookmarks',
        },
        event = 'VeryLazy',
    },
    {
        'MattesGroeger/vim-bookmarks',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'sindrets/diffview.nvim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'romgrk/barbar.nvim',
        lazy = false,
    },
    {
        'nvim-lua/plenary.nvim',
        lazy = false,
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'folke/todo-comments.nvim',
        event = 'VeryLazy',
    },
    {
        'Pocco81/true-zen.nvim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'karb94/neoscroll.nvim',
        event = 'VeryLazy',
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        'nvim-treesitter/nvim-treesitter-context',
        event = 'VeryLazy',
    },
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        event = 'VeryLazy',
    },
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
    },
    {
        'kyazdani42/nvim-tree.lua',
        lazy = false,
    },
    {
        'rhysd/vim-go-impl',
        event = 'VeryLazy',
    },
    {
        'neovim/nvim-lspconfig',
        event = 'VeryLazy',
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
    },
    {
        'hrsh7th/nvim-cmp',
        event = 'VeryLazy',
    },
    {
        'hrsh7th/cmp-path',
        dependencies = { 'hrsh7th/nvim-cmp' },
        event = 'VeryLazy',
    },
    {
        'hrsh7th/cmp-cmdline',
        dependencies = { 'hrsh7th/nvim-cmp' },
        event = 'VeryLazy',
    },
    {
        'hrsh7th/cmp-buffer',
        dependencies = { 'hrsh7th/nvim-cmp' },
        event = 'VeryLazy',
    },
    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = { 'hrsh7th/nvim-cmp' },
        event = 'VeryLazy',
    },
    {
        'hrsh7th/cmp-nvim-lua',
        dependencies = { 'hrsh7th/nvim-cmp' },
        event = 'VeryLazy',
    },
    {
        'saadparwaiz1/cmp_luasnip',
        dependencies = { 'hrsh7th/nvim-cmp' },
        event = 'VeryLazy',
    },
    {
        'simrat39/symbols-outline.nvim',
        event = 'VeryLazy',
    },
    {
        'folke/trouble.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = 'VeryLazy',
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
        'nvim-tree/nvim-web-devicons',
        lazy = false,
    },
    {
        'kdheepak/lazygit.nvim',
        event = 'VeryLazy',
    },
    {
        'tpope/vim-fugitive',
        event = 'VeryLazy',
    },
    {
        'voldikss/vim-floaterm',
        event = 'VeryLazy',
    },
    {
        'mg979/vim-visual-multi',
        branch = 'master',
        event = 'VeryLazy',
    },
}

local opts = {
    install = {
        colorscheme = { "vscode" }
    },
    ui = {
        border = 'rounded',
        title = 'lazy.nvim'
    },
}


require('lazy').setup(pluglist, opts)
