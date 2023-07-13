require('notify').setup({
    stages = "static",
    timeout = 5000,
    background_colour = "#000000",
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
    top_down = false,
})
vim.notify = require("notify")
