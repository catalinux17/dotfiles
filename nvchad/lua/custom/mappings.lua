--@type MappingsConfig
local M = {}

M.general = {
    n = {
        -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<backspace>L"] = { "<cmd>Lazy<CR>", "dashboard for Lazy" },
        ["<backspace>P"] = { "<cmd>PackerSync<CR>", "dashboard for Packer" },
        ["<backspace>M"] = { "<cmd>Mason<CR>", "dashboard for Mason" },
        ["<leader>h"] = { "<cmd>nohl<CR>", "no highlight" },
        ["<C-/>"] = { "<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "comment line" },
        ["<C-c>"] = { "<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "comment line" },
        ["U"] = { "<cmd>redo<CR>", "redo" },
        ["<M-j>"] = { function()
            require("nvterm.terminal").toggle "float"
        end,
            "toggle floating term",
        },
        ["<F2>"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "fast rename" },
        ["<M-d>"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "open diagnostic in float" },
        ["<leader>Y"] = { "<cmd>%y+<CR>", "copy whole file" },
        ["<leader>C"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "lsp: code action" },
        ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "lsp: definition" },
        ["<F7>"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "go to prev diag" },
        ["<F8>"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "go to next diag" },
        ["<M-b>"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "go to prev diag" },
        ["<M-m>"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "go to next diag" },
        ["<F4>"] = { "<cmd>only<bar>vsplit<CR>gd", "open definition in split" },
        -- Telescope
        ["<leader>D"] = { "<cmd>Telescope diagnostics<CR>", "show all diagnostics" },
        ["<backspace>a"] = { "<cmd>Telescope find_files search_dirs=~/dotfiles/nvchad/lua/<CR>", "settings: find files" },
        ["<backspace>A"] = { "<cmd>Telescope live_grep search_dirs=~/dotfiles/nvchad/lua/<CR>", "settings: live grep" },
        ["<backspace>b"] = { "<cmd>Telescope find_files search_dirs=~/.config/nvim<CR>", "settings: find files" },
        ["<backspace>B"] = { "<cmd>Telescope live_grep search_dirs=~/.config/nvim<CR>", "settings: live grep" },
        ["<backspace>d"] = { "<cmd>Telescope find_files search_dirs=~/dotfiles<CR>", "settings: find files" },
        ["<backspace>o"] = {
            "<cmd>Telescope find_files search_dirs=~/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents<CR>",
            "settings: find files in Obsidian" },
        ["<leader>/"] = { "<cmd>Telescope live_grep<CR>", "live grep current dir" },
        ["<leader>b"] = { "<cmd>Telescope buffers<CR>", "get all buffers" },
        ["<C-S-P>"] = { "<cmd>Telescope buffers<CR>", "get all buffers" },
        ["<leader>fw"] = { "<cmd>Telescope grep_string<CR>", "telescope: find word under cursor" },
        ["<F3>"] = { "<cmd>Telescope grep_string<CR>", "telescope: find word under cursor" },
        ["gr"] = { "<cmd>Telescope lsp_references<CR>", "telescope: find all references", opts = { noremap = true } },
        ["<leader><leader>"] = { "<cmd>Telescope resume<CR>", "resume telescope" },
        ["<leader>?"] = { "<cmd>Telescope keymaps<CR>", "show all keymaps" },
        ["<leader>F"] = { "<cmd>Telescope find_files<CR>", "find files in the current directory" },
        ["<C-p>"] = { "<cmd>Telescope find_files<CR>", "find files in the current directory" },
    },
    v = {
        ["<leader>y"] = { '"+y', "copy to clipboard" },
        ["J"] = { ":m '>+1<CR>gv=gv", "move line up" },
        ["K"] = { ":m '>-2<CR>gv=gv", "move line down" },
        ["<C-/>"] = { "<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "comment line" },
        ["<leader>F"] = { "<cmd>vim.lsp.buf.format { async = true }<CR>", "format current file" },
    },
    t = {
        ["<M-j>"] = { function()
            require("nvterm.terminal").toggle "float"
        end,
            "toggle floating term",
        },
    },
    i = {
        ["<C-s>"] = { "<esc>:w<CR>i", "save file" },
    }
}

return M
