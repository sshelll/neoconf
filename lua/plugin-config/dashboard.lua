local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("dashboard was not found, please reinstall it.")
    return
end

db.setup({
    theme = 'hyper',
    config = {
        week_header  = { enable = false },
        packages     = { enable = false },
        disable_move = false,
        shortcut     = {
            {
                desc = '󰊳 Update',
                group = '@property',
                action = 'PlugUpdate',
                key = 'u',
            },
            {
                icon = ' ',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                desc = ' Projects',
                group = 'Label',
                action = 'Telescope projects',
                key = 'p',
            },
        },
        header       = {
            '',
            '    ████▌█████▌█ ████████▐▀██▀    ',
            '  ▄█████ █████▌ █ ▀██████▌█▄▄▀▄   ',
            '  ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀  ',
            ' ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█      ',
            '   ███ ▌▄█▌  ▀  ▀██  ▀██████▌     ',
            '    ▀█▌▀██▀ ▄         ███▐███     ',
            '     ██▌             ▐███████▌    ',
            '     ███     ▀█▀     ▐██▐███▀▌    ',
            '     ▌█▌█▄         ▄▄████▀ ▀      ',
            '       █▀██▄▄▄ ▄▄▀▀▒█▀█           ',
            '',
        },
    },
})
