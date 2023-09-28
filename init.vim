" packer
lua require('plugin')

" vim setting
lua require('basic')

" other plugs
lua require('plugin-config/tokyo-night')
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
lua require('plugin-config/comment')
lua require('plugin-config/nvim-notify')
lua require('plugin-config/lazygit')
lua require('plugin-config/mason')
lua require('plugin-config/lspconfig')
lua require('plugin-config/symbols-outline')
lua require('plugin-config/neovide')

" vim script
for f in glob('~/.config/nvim/vimscript/*.vim', 0, 1)
    execute 'source' f
endfor
