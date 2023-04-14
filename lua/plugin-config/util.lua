util = {}

--exec cmd in pop up input box.
function util.exec_cmd(default)
    local input_opt = {
        prompt = 'Exec Cmd',
        completion = 'command',
        default = default,
    }
    local on_confirm = function(input)
        if input and #input ~= "" then
            vim.api.nvim_command(input)
        end
    end
    vim.ui.input(input_opt, on_confirm)
end

return util
