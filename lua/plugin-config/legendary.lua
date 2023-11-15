local dap, dapui = require("dap"), require("dapui")

require('legendary').setup({
   keymaps = {
        {
            itemgroup = 'basic',
            description = 'basic keymaps',
            icon = '',
            keymaps = {
                { '<F12>',     ':vertical res+3<CR>',       description = 'incr vertical window width' },
                { '<F11>',     ':vertical res-1<CR>',       description = 'decr vertical window width' },
                { '<F10>',     ':res+3<CR>',                description = 'incr horizontal window width' },
                { '<F9>',      ':res-1<CR>',                description = 'decr horizontal window width' },
                { 'p',         '"0p',                       description = 'paste from the first nvim buffer' },
                { '<leader>p', 'p',                         description = 'paste last',                 mode = { 'n', 'v' } },
                { '<leader>y', '"+y',                       description = 'copy to os',                 mode = { 'n', 'v' } },
                { '…',         ':ExecNormal<CR>',           description = 'enter cmd mode',             mode = { 'n' } },
                { '…',         ':ExecVisual<CR>',           description = 'enter cmd mode',             mode = { 'v' } },
                { '<leader>l', ':noh<CR>',                  description = 'no highlight',               mode = { 'n' } },
                { '<C-w>N',    '<C-\\><C-n>',               description = 'change terminal mode',       mode = { 't' } },
            },
        },
        {
            itemgroup = 'search',
            description = 'keymaps for search',
            icon = '',
            keymaps = {
                { '<C-p>',      ':Telescope live_grep<CR>',                 description = 'search in the current work dir with Telescope' },
                { '<C-f>',      ':Telescope current_buffer_fuzzy_find<CR>', description = 'search in the current buffer with Telescope' },
                { '<leader>k',  ':Legendary<CR>',                           description = 'open legendary search box' },
                { '<leader>td', ':TodoTelescope<CR>',                       description = 'search todo items with Telescope' },
                { '<leader>tf', ':Telescope find_files<CR>',                description = 'search files with Telescope' },
                { '<leader>e',  ':HopWord<CR>',                             description = 'hop jump words' },
                { '<leader>z',  ':NvimTreeFindFile<CR>',                    description = 'nvim tree find file'},
            },
        },
        {
            itemgroup = 'golang',
            description = 'keymaps for golang',
            icon = '',
            keymaps = {
                { '<F2>', ':GottClear<CR>',      description = 'clear go test notification' },
                {
                    '<F5>',
                    function ()
                       local filename = vim.fn.expand('%:t')
                       if string.find(filename, '_test.go') then
                           vim.cmd(':GottFile -v')
                       end
                    end,
                    description = 'run all go tests in the current file with -v flag',
                },
            },
        },
        {
            itemgroup = 'git',
            description = 'keymaps for git',
            icon = '',
            keymaps = {
                { '<leader>gg', ':LazyGit<CR>',      description = 'open lazygit window' },
                { '<leader>bb', ':Git blame<CR>',    description = 'show git blame' },
                { '<leader>gd', ':DiffviewOpen<CR>', description = 'open diffview' },
            },
        },
        {
            itemgroup = 'dap',
            description = 'keymaps for dap',
            icon = '',
            keymaps = {
                { '<leader>da', function() dap.toggle_breakpoint() end, description = 'toggle breakpoint' },
                { '<leader>ds', function() dap.step_into() end,         description = 'step into' },
                { '<leader>dw', function() dap.step_over() end,         description = 'step over' },
                { '<leader>do', function() dap.step_out() end,          description = 'step out' },
                { '<leader>dt', function() dap.run_to_cursor() end,     description = 'run to cursor' },
                { '<leader>dq', function() dap.disconnect() end,        description = 'disconnect' },
                { '<leader>dr', function() dap.clear_breakpoints() end, description = 'clean breakpoints' },
                { '<leader>de', function() dapui.eval() end,            description = 'eval', mode = { 'n', 'v' } },
                { '<leader>dc',
                    function()
                        local filetype = vim.bo.filetype
                        if filetype == 'lua' then
                            require('osv').run_this()
                            return
                        end
                        dap.continue()
                    end,
                    description = 'continue',
                },
            },
        },
        {
            itemgroup = 'barbar',
            description = 'keymaps for barbar',
            icon = '',
            keymaps = {
                { '≤', ':BufferPrevious<CR>',                   description = 'previous buffer' },
                { '≥', ':BufferNext<CR>',                       description = 'next buffer' },
                { 'œ',  ':BufferClose<CR>',                      description = 'close buffer' },
                { 'π',  ':BufferPin<CR>',                        description = 'pin buffer' },
                { 'ç',  ':BufferCloseAllButCurrentOrPinned<CR>', description = 'close all buffers but pinned' },
            },
        },
        {
            itemgroup = 'others',
            description = 'other keymaps',
            icon = '',
            keymaps = {
                { '<leader>tt', ':ToggleTerm size=15 direction=horizontal<CR>',    description = 'toggle a terminal emulator at bottom' },
                { '<F3>',       ':NvimTreeToggle<CR>', description = 'toggle NvimTree' },
            },
        },
        {
            itemgroup = 'ide',
            description = 'keymaps for ide',
            icon = '',
            keymaps = {
                { '<F4>',       ':SymbolsOutline<CR>', description = 'toggle symbol outline' },
                { '<leader>dd', ':TroubleToggle<CR>',  description = 'toggle trouble' },
                {
                    '<leader>rr',
                    function ()
                        local fileType = vim.bo.filetype
                        if fileType == 'go' then
                            require('util/golang').ui_run()
                        elseif fileType == 'javascript' then
                            require('util/nodejs').ui_run()
                        elseif fileType == 'rust' then
                            local common = require('util/common')
                            local envs = common.readInput('envs: ')
                            if envs.canceled then
                                return
                            end
                            local args = common.readInput('args: ')
                            if args.canceled then
                                return
                            end
                            vim.cmd('!' .. envs.input .. ' cargo run -- ' .. args.input)
                        else
                            local err = fileType .. ' is not supported'
                            vim.api.nvim_err_writeln(err)
                        end
                    end,
                    description = 'run file with ui',
                },
                {
                    '<leader>rt',
                    function ()
                        local fileType = vim.bo.filetype
                        if fileType == 'go' then
                            vim.cmd('Telescope gott')
                        elseif fileType == 'rust' then
                            local args = require('util/common').readInput('args: ')
                            if args.canceled then
                                return
                            end
                            vim.cmd('!cargo test -- ' .. args.input)
                        elseif fileType == 'java' then
                            local args = require('util/common').readInput('test class (y/N): ')
                            if not args.canceled and args == 'y' then
                                require('jdtls').test_class()
                            else
                                require('jdtls').test_nearest_method()
                            end
                            require('dap').repl.open()
                        end
                    end,
                    description = 'run test',
                },
                {
                    '<leader>gt',
                    function ()
                        local fileType = vim.bo.filetype
                        if fileType == 'go' then
                            vim.cmd('GoTestAdd')
                        end
                    end,
                    description = 'generate test for the current function',
                }
            }
        }
    },
    commands = {
        {
            itemgroup = 'cmd',
            description = 'exec cmd in pop up input box',
            icon = '',
            commands = {
                {
                    ':ExecNormal',
                    function()
                        require('util/cmd').enter_cmd('', true)
                    end,
                    description = 'exec cmd',
                },
                {
                    ':ExecVisual',
                    function()
                        require('util/cmd').enter_cmd('\'<,\'>', true)
                    end,
                    description = 'exec cmd',
                },
            }
        },
        {
            itemgroup = 'search',
            description = 'commands for search',
            icon = '',
            commands = {
                {
                    ':SearchLegendaryCommands',
                    function()
                        local commands = require('legendary.filters').commands()
                        require('legendary').find({ filters = commands })
                    end,
                    description = 'open legendary to search commands'
                },
                {
                    ':SearchFuncs',
                    function()
                        local funcs = require('legendary.filters').funcs()
                        require('legendary').find({ filters = funcs })
                    end,
                    description = 'open legendary to search functions'
                },
                {
                    ':SearchGitCommits',
                    function ()
                        require('telescope').extensions.git_diffs.diff_commits()
                    end,
                    description = 'search git commits and open it in diffview'
                },
                {
                    ':SearchProjects',
                    function ()
                        local projects = require('telescope').extensions.projects.projects
                        local layout = {
                            layout_config = {
                                width = 0.5,
                                height = 0.4,
                            },
                            previewer = false,
                            display_type = 'full',
                        }
                        local theme = require('telescope.themes').get_dropdown(layout)
                        projects(theme)
                    end,
                    description = 'search projects'
                },
                {
                    ':SearchLicenses',
                    function ()
                        vim.cmd('Telescope software-licenses find')
                    end,
                    description = 'search software licenses'
                }
            }
        },
        {
            itemgroup = 'notify',
            description = 'commands for notify',
            icon = '',
            commands = {
                {
                    ":NotificationClear",
                    function()
                        require('notify').dismiss()
                    end,
                    description = 'clear notifications'
                },
            },
        },
        {
            itemgroup = 'rust',
            description = 'commands for rust',
            icon = '',
            commands = {
                {
                    ':RustBuild',
                    function()
                        vim.cmd('!cargo build')
                    end,
                    description = 'build rust project'
                },
                {
                    ':RustBuildRelease',
                    function()
                        vim.cmd('!cargo build --release')
                    end,
                    description = 'build rust project with release flag'
                }
            },
        },
        {
            itemgroup = 'nodejs',
            description = 'commands for nodejs',
            icon = '',
            commands = {
                {
                    ':NodeRun',
                    function ()
                        local file = vim.fn.expand('%:p')
                        local cmd = '!node ' .. file
                        require('util/cmd').run_cmd(cmd, true)
                    end,
                    description = 'run nodejs file'
                }
            },
        },
        {
            itemgroup = 'software-licenses',
            description = 'commands for generate software-licenses',
            icon = '',
            commands = {
                {
                    ':SoftwareLicensesBSD3Clause',
                    function ()
                        local c = require('util/common')
                        local year = c.inputOrDefault(vim.fn.strftime('%Y'), 'year: ')
                        local author = c.inputOrDefault('sshelll', 'author: ')
                        local lines = require('util/license').BSD3Clause(year, author)
                        vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
                    end,
                    description = 'generate BSD3-Clause software license'
                },
                {
                    ':SoftwareLicensesMIT',
                    function ()
                        local c = require('util/common')
                        local year = c.inputOrDefault(vim.fn.strftime('%Y'), 'year: ')
                        local author = c.inputOrDefault('sshelll', 'author: ')
                        local lines = require('util/license').MIT(year, author)
                        vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
                    end,
                    description = 'generate MIT software license'
                }
            },
        }
    },
    funcs = {
        {
            itemgroup = 'golang',
            description = 'functions for golang',
            icon = '',
            funcs = {
                {
                    description = 'go impl with ui',
                    function ()
                        require('util/golang').ui_impl()
                    end
                },
            }
        },
        {
            itemgroup = 'time',
            description = 'functions for time',
            icon = '',
            funcs = {
                {
                    description = 'milli timestamp to date',
                    function ()
                        local c = require('util/common')
                        local input = c.inputOrDefault(vim.fn.strftime('%s'), 'timestamp: ')
                        local timestamp = tonumber(input)
                        local date = os.date('%Y-%m-%d %H:%M:%S', timestamp / 1000)
                        vim.api.nvim_out_write(date .. '\n')
                    end
                },
                {
                    description = 'date to milli timestamp',
                    function ()
                        local c = require('util/common')
                        local fmt = '%Y-%m-%d %H:%M:%S'
                        local input = c.inputOrDefault(vim.fn.strftime(fmt), string.format('date(%s, default now): ', fmt))
                        local date = input
                        local timestamp = os.time({
                            year = date:sub(1, 4),
                            month = date:sub(6, 7),
                            day = date:sub(9, 10),
                            hour = date:sub(12, 13),
                            min = date:sub(15, 16),
                            sec = date:sub(18, 19),
                        })
                        vim.api.nvim_out_write(timestamp * 1000 .. '\n')
                    end
                }
            }
        }
    },
    extensions = {
        nvim_tree = true,
        diffview = true,
    },
    select_prompt = 'legendary',
    include_legendary_cmds = false,
})
