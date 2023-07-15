local util = require "util"
local gott = {}

function gott.run_test_under_cursor()
    local pos = util.get_pos_under_cursor()
    local dir = vim.fn.expand('%:p:h')
    local filename = vim.fn.expand('%:p')

    local cmd = string.format("!cd %s && gott --pos %s:%s -v", dir, filename, pos)
    local parsedCmd = vim.api.nvim_parse_cmd(cmd, {})

    local output = vim.api.nvim_cmd(parsedCmd, { output = true})
    local splited = util.split(output, "\n")
    table.remove(splited, 1)

    local displayed = vim.notify(
        splited,
        vim.log.levels.INFO,
        {
            title = "gott",
            icon = "",
            keep = function ()
                return true
            end,
        }
    )
    if not displayed then
        vim.api.nvim_err_writeln(output)
    end
end

function gott.get_test_name(file, pos)
    local cmd = string.format("!gott --pos %s:%s -p", file, pos)
    return vim.api.nvim_command(cmd)
end

return gott
