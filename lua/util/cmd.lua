local util = {}

function util.enter_cmd(default, keep)
    local input_opt = {
        prompt = 'Exec Cmd',
        completion = 'command',
        default = default,
    }
    vim.ui.input(input_opt, util.run_cmd)
end

function util.run_cmd(input, keep)
    if input and #input ~= "" then
        local parsedCmd = vim.api.nvim_parse_cmd(input, {})
        local output = vim.api.nvim_cmd(parsedCmd, { output = true })
        if output == "" then
            return
        end
        local displayed = vim.notify(
            output,
            vim.log.levels.INFO,
            {
                title = "Exec Result",
                icon = "",
                timeout = 3000,
                keep = function()
                    return keep
                end
            }
        )
        if not displayed then
            vim.api.nvim_err_writeln(output)
        end
    end
end

function util.term_exec_cmd(cmd)
    vim.api.nvim_command("TermExec cmd=\"" .. cmd .. "\"")
end

-- opts = {
--     notify = {
--         keep = true,
--     },
--     buf = {
--         height = 20,
--         modifiable = false,
--     },
-- }
function util.run_cmd_ui(cmd, opts)
    local output = ""
    if cmd and cmd ~= "" then
        local parsed_cmd = vim.api.nvim_parse_cmd(cmd, {})
        output = vim.api.nvim_cmd(parsed_cmd, { output = true })
    end
    if output == "" then
        return
    end
    if opts.notify then
        vim.notify(
            output,
            vim.log.levels.INFO,
            {
                title = "Exec Result",
                icon = "",
                timeout = 3000,
                keep = function()
                    return opts.notify.keep or false
                end
            }
        )
    elseif opts.buf then
        local lines = require("util/common").split(output, "\n")
        local buf = vim.api.nvim_create_buf(false, true)
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
        vim.api.nvim_buf_set_option(buf, "modifiable", opts.buf.modifiable or false)
        local height = opts.buf.height or 20
        vim.cmd('botright ' .. height .. ' split | ' .. buf .. 'buffer')
    else
        vim.api.nvim_err_writeln(output)
    end
end

return util
