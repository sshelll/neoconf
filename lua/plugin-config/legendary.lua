require('legendary').setup({
    keymaps = {
        {
            itemgroup = 'basic',
            description = 'basic keymaps',
            icon = '',
            keymaps = {
                { '<F12>',     ':vertical res+3<CR>',       description = 'incr vertical window width' },
                { '<F11>',     ':vertical res-1<CR>',       description = 'decr vertical window width' },
                { 'p',         '"0p',                       description = 'paste from the first nvim buffer' },
                { '<leader>p', 'p',                         description = 'paste last',                 mode = { 'n', 'v' } },
                { '<leader>y', '"+y',                       description = 'copy to os',                 mode = { 'n', 'v' } },
                { '…',         ':ExecNormal<CR>',           description = 'enter cmd mode',             mode = { 'n' } },
                { '…',         ':ExecVisual<CR>',           description = 'enter cmd mode',             mode = { 'v' } },
                { '<leader>l', ':noh<CR>',                  description = 'no highlight',               mode = { 'n' } },
            },
        },
        {
            itemgroup = 'coc',
            description = 'keymaps for coc.nvim',
            icon = '',
            keymaps = {
                { 'gd',         '<Plug>(coc-definition)',                       description = 'go to definition' },
                { 'gi',         ':Telescope coc implementations<CR>)',          description = 'go to implementations' },
                { 'gr',         ':CocReferences<CR>',                           description = 'go to references' },
                { '<leader>rn', '<Plug>(coc-rename)',                           description = 'rename' },
                { '<leader>f',  ':CocCommand editor.action.formatDocument<CR>', description = 'format file' },
                { '<leader>dd', ':CocDiagnosticsT<CR>',                          description = 'show diagnostics' },
                { '<leader>gb', ':CocCommand git.showBlameDoc<CR>',             description = 'show git blame doc' },
                { '<leader>gt', ':CocCommand go.test.toggle<CR>',               description = 'toggle go test file' },
                { '<F4>',       ':CocOutline<CR>',                              description = 'toggle outline' },
                { 'K',          ':CocShowDocumentation<CR>',                    description = 'show doc in preview window', mode = { 'n' } },
            },
        },
        {
            itemgroup = 'search',
            description = 'keymaps for search',
            icon = '',
            keymaps = {
                { '<C-p>',      ':Telescope live_grep<CR>',                 description = 'search in the current work dir with Telescope' },
                { '<C-f>',      ':Telescope current_buffer_fuzzy_find<CR>', description = 'search in the current buffer with Telescope' },
                { '<C-k>',      ':SearchLegendary<CR>',                     description = 'open legendary search box' },
                { '<C-c>',      ':SearchLegendaryCommands<CR>',             description = 'open legendary command search box' },
                { '<leader>td', ':TodoTelescope<CR>',                       description = 'search todo items with Telescope' },
                { '<leader>tf', ':Telescope find_files<CR>',                description = 'search files with Telescope' },
                { '<leader>e',  '<Plug>(easymotion-overwin-w)',             description = 'easymotion jump words' },
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
                { '<leader>da', function() require('dap').toggle_breakpoint() end, description = 'toggle breakpoint' },
                { '<leader>dc', function() require('dap').continue() end,          description = 'continue' },
                { '<leader>ds', function() require('dap').step_into() end,         description = 'step into' },
                { '<leader>dw', function() require('dap').step_over() end,         description = 'step over' },
                { '<leader>do', function() require('dap').step_out() end,          description = 'step out' },
                { '<leader>dt', function() require('dap').run_to_cursor() end,     description = 'run to cursor' },
                { '<leader>dq', function() require('dap').disconnect() end,        description = 'disconnect' },
                { '<leader>dr', function() require('dap').clear_breakpoints() end, description = 'clean breakpoints' },
                {
                    '<leader>de',
                    function() require('dapui').eval() end,
                    description = 'eval',
                    mode = { 'n', 'v' },
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
                { '<leader>tt', ':FloatermNew<CR>',    description = 'open a floating terminal' },
                { '<F3>',       ':NvimTreeToggle<CR>', description = 'toggle NvimTree' },
            },
        },
    },
    commands = {
        {
            itemgroup = 'coc',
            description = 'coc commands',
            icon = '',
            commands = {
                {
                    ':CocShowDocumentation',
                    function ()
                        local cw = vim.fn.expand('<cword>')
                        if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
                            vim.api.nvim_command('h ' .. cw)
                        elseif vim.api.nvim_eval('coc#rpc#ready()') then
                            vim.fn.CocActionAsync('doHover')
                        else
                            vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
                        end
                    end,
                    description = 'show doc in preview window'
                },
                {
                    ':CocReferences',
                    function ()
                        local ref = require("telescope").extensions.coc.references
                        local layout = {
                            layout_config = {
                                width = 0.4,
                                height = 0.4,
                            }, 
                            previewer = true,
                        }
                        local theme = require('telescope.themes').get_cursor(layout)
                        ref(theme)
                    end,
                    description = 'show references'
                },
                {
                    ':CocDiagnosticsT',
                    function ()
                        local diag = require("telescope").extensions.coc.workspace_diagnostics
                        local layout = {
                            layout_config = {
                                width = 0.8,
                                height = 0.4,
                            }, 
                            previewer = true,
                        }
                        local theme = require('telescope.themes').get_cursor(layout)
                        diag(theme)
                    end,
                    description = 'show diagnostics'
                },
            }
        },
        {
            itemgroup = 'cmd',
            description = 'exec cmd in pop up input box',
            icon = '',
            commands = {
                {
                    ':ExecNormal',
                    function()
                        require('util').exec_cmd('')
                    end,
                    description = 'exec cmd',
                },
                {
                    ':ExecVisual',
                    function()
                        require('util').exec_cmd('\'<,\'>')
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
                    ':SearchLegendary',
                    function()
                        require('legendary').find()
                    end,
                    description = 'open legendary to search keymaps'
                },
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
            }
        },
        {
            itemgroup = 'splitjoin',
            description = 'commands for splitjoin',
            icon = '',
            commands = {
                {
                    ':SplitLines',
                    function()
                        require('splitjoin').split()
                    end,
                    description = 'split lines'
                },
                {
                    ':JoinLines',
                    function()
                        require('splitjoin').join()
                    end,
                    description = 'join lines'
                },
            },
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
            itemgroup = 'golang',
            description = 'commands for golang',
            icon = '',
            commands = {
                {
                    ':Gott',
                    function()
                        require('gott').run_test_under_cursor()
                    end,
                    description = 'run go test with gott'
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
                        vim.cmd('silent !cargo build')
                    end,
                    description = 'build rust project'
                },
            },
        }
    },
    extensions = {
        nvim_tree = true,
        diffview = true,
    },
    select_prompt = 'legendary',
    include_legendary_cmds = false,
})
