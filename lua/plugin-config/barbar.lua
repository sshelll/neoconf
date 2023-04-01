require("barbar").setup {
    icons = {
        modified = { separator = '⋄' },
        pinned = { button = '車' },
    }
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
map('n', '≥', '<Cmd>BufferNext<CR>', opts)
-- Pin/unpin buffer
map('n', 'π', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', 'œ', '<Cmd>BufferClose<CR>', opts)

vim.api.nvim_create_autocmd('FileType', {
    callback = function(tbl)
        local set_offset = require('barbar.api').set_offset

        local bufwinid
        local last_width
        local autocmd = vim.api.nvim_create_autocmd('WinScrolled', {
            callback = function()
                bufwinid = bufwinid or vim.fn.bufwinid(tbl.buf)

                local width = vim.api.nvim_win_get_width(bufwinid)
                if width ~= last_width then
                    set_offset(width, 'FileTree')
                    last_width = width
                end
            end,
        })

        vim.api.nvim_create_autocmd('BufWipeout', {
            buffer = tbl.buf,
            callback = function()
                vim.api.nvim_del_autocmd(autocmd)
                set_offset(0)
            end,
            once = true,
        })
    end,
    pattern = 'NvimTree', -- or any other filetree's `ft`
})
