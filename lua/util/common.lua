local common = {}

function common.inputOrDefault(default, prompt)
    local input = vim.fn.input(prompt)
    if input == '' then
        return default
    end
    return input
end

return common
