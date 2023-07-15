local util = {}

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

function util.get_pos_under_cursor()
    local cursor = vim.api.nvim_win_get_cursor(0)
    local line, col = cursor[1], cursor[2]

    -- get all lines
    local allLines = vim.api.nvim_buf_get_lines(0, 0, line, false)

    -- find the byte position of the cursor
    local pos = 0
    for i = 1, line-1 do
        pos = pos + #allLines[i] + 1
    end
    pos = pos + col

    return pos
end

function util.split(str, sep)
    local fields = {}
    local pattern = string.format("([^%s]+)", sep)
    str:gsub(pattern, function(c) fields[#fields+1] = c end)
    return fields
end

return util
