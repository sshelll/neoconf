require('legendary').setup({
    keymaps = {
        {
            itemgroup = 'basic',
            description = 'basic keymaps',
            icon = '',
            keymaps = {
                { '<F12>',     ':vertical res+3<CR>', description = 'incr vertical window width' },
                { '<F11>',     ':vertical res-1<CR>', description = 'decr vertical window width' },
                { 'p',         '"0p',                 description = 'paste from the first nvim buffer' },
                { '<leader>p', 'p',                   description = 'paste last',                      mode = { 'n', 'v' } },
                { '<leader>y', '"+y',                 description = 'copy to os',                      mode = { 'n', 'v' } },
                { '…',       ':ExecNormal<CR>',     description = 'enter cmd mode',                  mode = { 'n' } },
                { '…',       ':ExecVisual<CR>',     description = 'enter cmd mode',                  mode = { 'v' } },
            },
        },
        {
            itemgroup = 'coc',
            description = 'keymaps for coc.nvim',
            icon = '',
            keymaps = {
                { 'gd',         '<Plug>(coc-definition)',                       description = 'go to definition' },
                { 'gy',         '<Plug>(coc-type-definition)',                  description = 'go to type definition' },
                { 'gi',         '<Plug>(coc-implementation)',                   description = 'go to implementations' },
                { 'gr',         '<Plug>(coc-references)',                       description = 'go to references' },
                { '<leader>rn', '<Plug>(coc-rename)',                           description = 'rename' },
                { '<leader>f',  ':CocCommand editor.action.formatDocument<CR>', description = 'format file' },
                { '<leader>dd', ':CocDiagnostics<CR>',                          description = 'show diagnostics' },
                { '<leader>gb', ':CocCommand git.showBlameDoc<CR>',             description = 'show git blame doc' },
                { '<leader>gt', ':CocCommand go.test.toggle<CR>',               description = 'toggle go test file' },
                { '<F4>',       ':CocOutline<CR>',                              description = 'toggle outline' },
            },
        },
        {
            itemgroup = 'search',
            description = 'keymaps for search',
            icon = '',
            keymaps = {
                { '<C-p>',      ':Telescope live_grep<CR>', description = 'search in the current work dir with Telescope' },
                { '<C-f>',      ':BLines<CR>',              description = 'search in the current buffer with FZF' },
                { '<C-k>',      ':SearchKeymaps<CR>',       description = 'open keymap search box' },
                { '<C-l>',      ':SearchCommands<CR>',      description = 'open command search box' },
                { '<leader>td', ':TodoTelescope<CR>',       description = 'search todo items with Telescope' },
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
            ':ExecNormal',
            function()
                require('./util').exec_cmd('')
            end,
            description = 'exec cmd',
        },
        {
            ':ExecVisual',
            function()
                require('./util').exec_cmd('\'<,\'>')
            end,
            description = 'exec cmd',
        },
        {
            itemgroup = 'search',
            description = 'commands for search',
            icon = '',
            commands = {
                {
                    ':SearchKeymaps',
                    function()
                        require('legendary').find()
                    end,
                    description = 'open legendary to search keymaps'
                },
                {
                    ':SearchCommands',
                    function()
                        local commands = require('legendary.filters').commands()
                        require('legendary').find({ filters = commands })
                    end,
                    description = 'open legendary to search commands'
                },
            }
        },
    },
    which_key = {
        auto_register = true,
        do_binding = true,
    },
    extensions = {
        nvim_tree = true,
        diffview = true,
    },
    select_prompt = 'legendary',
    include_legendary_cmds = false,
})
