local pluglist = {
    {
        'simrat39/rust-tools.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'mfussenegger/nvim-dap' },
        event = 'VeryLazy',
        config = function()
            require('plugin-config/rust-tools')
        end
    },
    {
        'nvim-orgmode/orgmode',
        dependencies = {
            { 'nvim-treesitter/nvim-treesitter', lazy = true },
        },
        event = 'VeryLazy',
        config = function()
            require('plugin-config/orgmode')
        end,
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
    },
    {
        "olexsmir/gopher.nvim",
        dependencies = { -- dependencies
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require('plugin-config/gopher')
        end
    },
    {
        'linrongbin16/lsp-progress.nvim',
        lazy = true,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lsp-progress').setup()
        end
    },
    {
        'gbprod/yanky.nvim',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/yanky')
        end
    },
    {
        "ellisonleao/glow.nvim",
        event = 'VeryLazy',
        config = function()
            require("glow").setup()
        end,
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
        event = 'VeryLazy',
        config = function()
            require('qfview').setup()
        end,
    },
    {
        'tpope/vim-dispatch',
        lazy = true,
    },
    {
        'phaazon/hop.nvim',
        event = 'VeryLazy',
        config = function()
            require('hop').setup()
        end,
    },
    {
        'sshelll/gott.nvim',
        event = 'VeryLazy',
        config = function()
            require('gott').setup()
        end,
    },
    {
        'sshelll/telescope-gott.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        lazy = true,
    },
    {
        'rcarriga/nvim-notify',
        lazy = false,
        config = function()
            require('plugin-config/nvim-notify')
        end
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
        config = function()
            require('plugin-config/comment')
        end
    },
    {
        'Mofiqul/vscode.nvim',
        lazy = true,
    },
    {
        'nvimdev/dashboard-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('plugin-config/dashboard')
        end
    },
    {
        'ahmedkhalf/project.nvim',
        lazy = false,
        config = function()
            require('plugin-config/project')
        end
    },
    {
        'RRethy/vim-illuminate',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/illuminate')
        end
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        dependencies = { 'nvim-telescope/telescope.nvim' }
    },
    {
        'lewis6991/gitsigns.nvim',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/gitsigns')
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim' }
    },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
        config = function ()
            require('plugin-config/dressing')
        end
    },
    {
        'mrjones2014/legendary.nvim',
        event = 'VeryLazy',
        priority = 1000,
        config = function()
            require('plugin-config/legendary')
        end
    },
    {
        'kkharji/sqlite.lua',
        lazy = false,
    },
    {
        'mfussenegger/nvim-dap-python',
        dependencies = { 'mfussenegger/nvim-dap' },
        lazy = true,
        event = 'VeryLazy',
        config = function()
            require('dap-python').setup('~/python/.virtualenvs/debugpy/bin/python3')
        end
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        dependencies = { 'mfussenegger/nvim-dap' },
        lazy = true,
        event = 'VeryLazy',
        config = function()
            require('plugin-config/dap-virtual-text')
        end
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap' },
        config = function()
            require('plugin-config/dap-ui')
        end
    },
    {
        'mfussenegger/nvim-dap',
        lazy = true,
        event = 'VeryLazy',
        config = function()
            require('plugin-config/dap')
        end
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        branch = 'main',
        priority = 1000,
        config = function()
            require('plugin-config/tokyo-night')
        end
    },
    {
        'kevinhwang91/nvim-hlslens',
        lazy = true,
        event = 'VeryLazy',
        config = function()
            require('plugin-config/hlslens')
        end
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        lazy = true,
        event = 'VeryLazy',
        config = function()
            require('plugin-config/indent-blankline')
        end
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
        config = function()
            require('plugin-config/barbar')
        end
    },
    {
        'nvim-lua/plenary.nvim',
        lazy = false,
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('plugin-config/telescope')
        end
    },
    {
        'folke/todo-comments.nvim',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/todo-comments')
        end
    },
    {
        'Pocco81/true-zen.nvim',
        lazy = true,
        event = 'VeryLazy',
    },
    {
        'karb94/neoscroll.nvim',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/neoscroll')
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = 'VeryLazy',
        config = function()
            require('plugin-config/nvim-treesitter')
        end
    },
    {
        'nvim-treesitter/nvim-treesitter-context',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/nvim-treesitter-ctx')
        end
    },
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/nvim-treesitter-text-obj')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
        dependencies = { 'linrongbin16/lsp-progress.nvim' },
        config = function()
            require('plugin-config/lualine')
        end
    },
    {
        'kyazdani42/nvim-tree.lua',
        lazy = false,
        config = function()
            require('plugin-config/nvimtree')
        end
    },
    {
        'rhysd/vim-go-impl',
        event = 'VeryLazy',
    },
    {
        'neovim/nvim-lspconfig',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/nvim-lspconfig')
        end
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require('plugin-config/mason')
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = 'VeryLazy',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
        },
        config = function()
            require('plugin-config/mason-lspconfig')
        end
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
        config = function()
            require('plugin-config/symbols-outline')
        end
    },
    {
        'folke/trouble.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = 'VeryLazy',
        config = function()
            require('plugin-config/trouble')
        end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require('plugin-config/autopairs')
        end
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
        'nvim-tree/nvim-web-devicons',
        lazy = false,
        config = function()
            require('plugin-config/devicons')
        end
    },
    {
        'kdheepak/lazygit.nvim',
        event = 'VeryLazy',
        config = function()
            require('plugin-config/lazygit')
        end
    },
    {
        'tpope/vim-fugitive',
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
        colorscheme = { "tokyonight" }
    },
    ui = {
        border = 'rounded',
        title = 'lazy.nvim'
    },
}


require('lazy').setup(pluglist, opts)
