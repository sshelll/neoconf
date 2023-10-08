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
    'gbprod/yanky.nvim',
    { "ellisonleao/glow.nvim", config = function() require("glow").setup() end },
    "chip/telescope-software-licenses.nvim",
    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter' },
        config = function()
            require('treesj').setup({ --[[ your config ]] })
        end,
    },
    { 'ashfinal/qfview.nvim',  config = function() require('qfview').setup() end },
    'tpope/vim-dispatch',
    { 'phaazon/hop.nvim',  config = function() require('hop').setup() end },
    'jbyuki/one-small-step-for-vimkind',
    { 'sshelll/gott.nvim', config = function() require('gott').setup() end },
    'sshelll/telescope-gott.nvim',
    'rcarriga/nvim-notify',
    'nvim-telescope/telescope-dap.nvim',
    'paopaol/telescope-git-diffs.nvim',
    'numToStr/Comment.nvim',
    'Mofiqul/vscode.nvim',
    {
        'nvimdev/dashboard-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    'ahmedkhalf/project.nvim',
    'RRethy/vim-illuminate',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'lewis6991/gitsigns.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'stevearc/dressing.nvim',
    'mrjones2014/legendary.nvim',
    'kkharji/sqlite.lua',
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
    'mfussenegger/nvim-dap',
    {
        'folke/tokyonight.nvim',
        lazy = false,
        branch = 'main',
    },
    'kevinhwang91/nvim-hlslens',
    'lukas-reineke/indent-blankline.nvim',
    'github/copilot.vim',
    'aklt/plantuml-syntax',
    'weirongxu/plantuml-previewer.vim',
    {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install',
    },
    'cocopon/iceberg.vim',
    'rhysd/clever-f.vim',
    'tom-anders/telescope-vim-bookmarks.nvim',
    'MattesGroeger/vim-bookmarks',
    'sindrets/diffview.nvim',
    'romgrk/barbar.nvim',
    'nvim-lua/plenary.nvim',
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    'folke/todo-comments.nvim',
    'Pocco81/true-zen.nvim',
    'karb94/neoscroll.nvim',
    { "nvim-treesitter/nvim-treesitter",          build = ":TSUpdate" },
    'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'nvim-lualine/lualine.nvim',
    'kyazdani42/nvim-tree.lua',
    'rhysd/vim-go-impl',
    'sebdah/vim-delve',
    'preservim/tagbar',
    'neovim/nvim-lspconfig',
    "williamboman/mason.nvim",
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'saadparwaiz1/cmp_luasnip',
    'simrat39/symbols-outline.nvim',
    'folke/trouble.nvim',
    'windwp/nvim-autopairs',
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    'nvim-tree/nvim-web-devicons',
    'kdheepak/lazygit.nvim',
    'tpope/vim-fugitive',
    'voldikss/vim-floaterm',
    { 'mg979/vim-visual-multi', branch = 'master' },
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
