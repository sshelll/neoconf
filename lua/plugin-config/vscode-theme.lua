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
        vscLineNumber = '#767676',
        vscCursorDark = '#ADD6FF',
    },

    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg = c.vscLightGreen, bg = c.vscDarkBlue, bold = true },
        GitSignsCurrentLineBlame = { fg = '#767676' },
        DiffChange = { bg = '#FFCC99' },
        DiffAdd = { bg = c.vscLightGreen },
        WinSeparator = { fg = '#000000' },
        TelescopeSelection = { bg = '#e6f3ff' },
    },

})

require('vscode').load()
