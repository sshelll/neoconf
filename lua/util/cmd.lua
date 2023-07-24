local util = {}

function util.exec_cmd(default, keep)
    local input_opt = {
        prompt = 'Exec Cmd',
        completion = 'command',
        default = default,
    }
    local on_confirm = function(input)
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
                    keep = function ()
                        return keep
                    end
                }
            )
            if not displayed then
                vim.api.nvim_err_writeln(output)
            end
        end
    end
    vim.ui.input(input_opt, on_confirm)
end

return util
