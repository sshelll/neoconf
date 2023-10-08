-- install lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- init lazy.nvim
require("plugins")

-- basic config
require("basic")

-- plugin config
require('plugin-config/vscode-theme')
require('plugin-config/devicons')
require('plugin-config/nvim-treesitter')
require('plugin-config/nvim-treesitter-ctx')
require('plugin-config/nvim-treesitter-text-obj')
require('plugin-config/neoscroll')
require('plugin-config/todo-comments')
require('plugin-config/telescope')
require('plugin-config/nvimtree')
require('plugin-config/indent-blankline')
require('plugin-config/hlslens')
require('plugin-config/dap')
require('plugin-config/dap-ui')
require('plugin-config/dap-virtual-text')
require('plugin-config/barbar')
require('plugin-config/lualine')
require('plugin-config/legendary')
require('plugin-config/gitsigns')
require('plugin-config/illuminate')
require('plugin-config/project')
require('plugin-config/dashboard')
require('plugin-config/comment')
require('plugin-config/nvim-notify')
require('plugin-config/lazygit')
require('plugin-config/mason')
require('plugin-config/lspconfig')
require('plugin-config/symbols-outline')
require('plugin-config/trouble')
require('plugin-config/yanky')
require('plugin-config/autopairs')
require('plugin-config/gopher')
require('plugin-config/neovide')
