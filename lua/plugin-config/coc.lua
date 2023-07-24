local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
opts = { silent = true, nowait = true }
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Apply the most preferred quickfix action on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Remap keys for apply refactor code actions.
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Organize imports on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "CocGroup",
    pattern = "*.go",
    command = "silent call CocAction('runCommand', 'editor.action.organizeImport')",
    desc = "Organize imports on save"
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "CocGroup",
    pattern = "*.go",
    command = "silent call CocAction('runCommand', 'editor.action.formatDocument')",
    desc = "Format on save"
})

-- Intergration with vim-notify

local coc_status_record = {}
local coc_diag_record = {}

local function reset_coc_diag_record(window)
    coc_diag_record = {}
end

local function reset_coc_status_record(window)
    coc_status_record = {}
end

local function coc_status_notify(msg, level)
    local notify_opts = {
        title = "LSP Status",
        timeout = 1000,
        hide_from_history = true,
        on_close = reset_coc_status_record
    }
    -- if coc_status_record is not {} then add it to notify_opts to key called "replace"
    if coc_status_record ~= {} then
        notify_opts["replace"] = coc_status_record.id
    end
    coc_status_record = vim.notify(msg, level, notify_opts)
end

local function coc_diag_notify(msg, level)
    local notify_opts = { title = "LSP Diagnostics", timeout = 1000, on_close = reset_coc_diag_record }
    -- if coc_diag_record is not {} then add it to notify_opts to key called "replace"
    if coc_diag_record ~= {} then
        notify_opts["replace"] = coc_diag_record.id
    end
    coc_diag_record = vim.notify(msg, level, notify_opts)
end

local function diag_notify()
    local info = vim.b.coc_diagnostic_info
    if not info then
        return
    end
    local msgs = {}

    -- cal level
    local level = "info"
    if info.warning > 0 then
        level = "warn"
    end
    if info.error > 0 then
        level = "error"
    end

    -- extract msgs
    if info.error > 0 then
        table.insert(msgs, string.format(" Errors: %d", info.error))
    end
    if info.warning > 0 then
        table.insert(msgs, string.format(" Warnings: %d", info.warning))
    end
    if info.information > 0 then
        table.insert(msgs, string.format(" Infos: %d", info.information))
    end
    if info.hint > 0 then
        table.insert(msgs, string.format(" Hints: %d", info.hint))
    end

    -- cal diag
    local diag = table.concat(msgs, "\n")
    if not diag or diag == "" then
        diag = ' All OK'
    end

    coc_diag_notify(diag, level)
end

local function status_notify()
    local status = vim.g.coc_status
    local level = "info"
    if not status or status == "" then
        return
    end
    coc_status_notify(status, level)
end

vim.api.nvim_create_augroup("CocVimNotify", {})

vim.api.nvim_create_autocmd({"User CocDiagnosticChange"}, {
    group = "CocVimNotify",
    pattern = "*",
    callback = diag_notify,
    desc = "Notify diagnostics"
})

vim.api.nvim_create_autocmd({"User CocStatusChange"}, {
    group = "CocVimNotify",
    pattern = "*",
    callback = status_notify,
    desc = "Notify status"
})
