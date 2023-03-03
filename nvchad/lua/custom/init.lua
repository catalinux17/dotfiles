
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Highlight on yank
augroup('YankHighlight', {
    clear = true
})
autocmd('TextYankPost', {
    group = 'YankHighlight',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = '1000'
        })
    end
})

-- Remove whitespace on save
autocmd('BufWritePre', {
    pattern = '*',
    command = ":%s/\\s\\+$//e"
})

-- Format before saving
autocmd('BufWritePre', {
    pattern = '*',
    command = "lua vim.lsp.buf.format()"
})

