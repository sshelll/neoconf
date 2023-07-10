vim.o.background = 'light'

local c = require('vscode.colors').get_colors()

require('vscode').setup({
    -- Alternatively set style in setup
    style = 'light',

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    color_overrides = {
        vscLineNumber = '#000000',
        vscCursorDark = '#ADD6FF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscLightGreen, bg=c.vscDarkBlue, bold=true },
    }
})

require('vscode').load()
