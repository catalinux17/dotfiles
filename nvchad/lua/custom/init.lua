
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

local opt = vim.opt

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.numberwidth = 2
opt.timeoutlen = 1000
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.swapfile = false
opt.colorcolumn = '100'

