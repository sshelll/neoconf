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
        DiffChange = { fg='#b08800', bg = '#fff5b1' },
        DiffAdd = { fg='#22863a', bg='#d4f8db' },
        DiffDelete = { fg='#cb2431', bg='#fae5e7'},
        WinSeparator = { fg = '#000000' },
        TelescopeSelection = { bg = '#e6f3ff' },
        TelescopeMatching = { fg = '#ff8700' },
        NotifyINFOTitle = { fg = '#008700' },
        NotifyINFOIcon = { fg = '#008700' },
        DapUILineNumber = { fg = '#008700' },
        DapUIThread = { fg = '#008700' },
        DapUIScope = { fg = '#008700' },
        DapUIBreakpointsCurrentLine = { fg = '#767676' },
        DapUIFloatBorder = { fg = '#000000' },
        DapUIDecoration = { fg = '#008700' },
        DapUIStoppedThread = { fg = '#008700' },
        DapUIBreakpointsPath = { fg = '#008700' },
    },

})

require('vscode').load()
