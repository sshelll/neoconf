local golang = {}

golang.ui_impl = function()
    vim.ui.input(
        { prompt = 'recv(f *Foo)' },
        function(recv)
            if recv == nil then
                return
            end
            vim.ui.input(
                { prompt = 'interface(io.Writer)' },
                function(interface)
                    if interface == nil then
                        return
                    end
                    vim.api.nvim_command('GoImpl ' .. recv .. ' ' .. interface)
                end
            )
        end
    )
end

return golang
