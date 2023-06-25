require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = require("telescope.actions").send_to_qflist,
            },
        },
        file_ignore_patterns = { "vendor", "node_modules" },
    },
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
        }
    }
}
require('telescope').load_extension('vim_bookmarks')
require("telescope").load_extension("ui-select")
require("telescope").load_extension("fzf")
