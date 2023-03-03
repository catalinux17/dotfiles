--@type MappingsConfig
local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<leader>Y"] = { 'mzggVG"+y`z', "copy whole file and don't change position" },
        ["<backspace>L"] = { "<cmd>Lazy<CR>", "dashboard for Lazy" },
        ["<backspace>P"] = { "<cmd>PackerSync<CR>", "dashboard for Packer" },
        ["<backspace>M"] = { "<cmd>Mason<CR>", "dashboard for Mason" },
        ["<backspace>a"] = { "<cmd>Telescope find_files search_dirs=~/dotfiles/nvchad/lua/<CR>", "settings: find files" },
        ["<backspace>A"] = { "<cmd>Telescope live_grep search_dirs=~/dotfiles/nvchad/lua/<CR>", "settings: live grep" },
        ["<backspace>b"] = { "<cmd>Telescope find_files search_dirs=~/.config/nvim<CR>", "settings: find files" },
        ["<backspace>B"] = { "<cmd>Telescope live_grep search_dirs=~/.config/nvim<CR>", "settings: live grep" },
        ["<leader>h"] = { "<cmd>nohl<CR>", "no highlight" },
        ["<leader>?"] = { "<cmd>Telescope keymaps<CR>", "show all keymaps" },
        ["<C-/>"] = { "<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "comment line" },
        ["U"] = { "<cmd>redo<CR>", "redo" },
        ["<M-j>"] = { function ()
            require("nvterm.terminal").toggle "float"
          end,
          "toggle floating term",
        },
        ["<leader>fw"] = { "<cmd>Telescope grep_string<CR>", "telescope: find word under cursor" },
        ["<F3>"] = { "<cmd>Telescope grep_string<CR>", "telescope: find word under cursor" },
        ["<leader>fr"] = { "<cmd>Telescope lsp_references<CR>", "telescope: find all references" },
        ["<leader><leader>"] = { "<cmd>Telescope resume<CR>", "resume telescope"},
        ["<F2>"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "fast rename" },
    },
    v = {
        ["<leader>y"] = { '"+y', "copy to clipboard" },
        ["J"] = { ":m '>+1<CR>gv=gv", "move line up" },
        ["K"] = { ":m '>-2<CR>gv=gv", "move line down" },
    },
    t = {
        ["<M-j>"] = { function ()
            require("nvterm.terminal").toggle "float"
          end,
          "toggle floating term",
        },
    },
    i = {
        ["<C-s>"] = { "<esc>:w<CR>i", "save file" },
    }
}
-- map('n', '<leader>h', ':nohl<CR>')

-- Toggle auto-indenting for code paste
-- map('n', '<F2>', ':set invpaste paste?<CR>')
-- vim.opt.pastetoggle = '<F2>'

-- -- Change split orientation
-- map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
-- map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- -- Move around splits using Ctrl + {h,j,k,l}
-- map('n', '<C-h>', '<C-w>h')
-- map('n', '<C-j>', '<C-w>j')
-- map('n', '<C-k>', '<C-w>k')
-- map('n', '<C-l>', '<C-w>l')

-- -- Reload configuration without restart nvim
-- map('n', '<leader>r', ':so %<CR>')

-- -- Fast saving with <leader> and s
-- map('n', '<leader>s', ':w<CR>')
-- -- map('i', '<leader>s', '<C-c>:w<CR>')

-- -- Close all windows and exit from Neovim with <leader> and q
-- -- map('n', '<leader>q', ':qa!<CR>')

-- -----------------------------------------------------------
-- -- Applications and Plugins shortcuts
-- -----------------------------------------------------------

-- -- Terminal mappings
-- map('n', '<C-t>', ':Term<CR>', {
--     noremap = true
-- }) -- open
-- map('t', '<Esc>', '<C-\\><C-n>') -- exit

-- -- NvimTree
-- map('n', '<C-b>', '<cmd>NeoTreeShowToggle<CR>') -- open/close
-- -- map('n', '<C-S-b>', '<cmd>NvimTreeRefresh<CR>') -- refresh
-- -- map('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>') -- search file

-- -- Tagbar
-- map('n', '<leader>z', '<cmd>TagbarToggle<CR>') -- open/close

-- map({'n', 'i', 'v'}, '<C-s>', '<cmd>w<CR>') -- save with control + s
-- map('n', '<leader>gd', '<cmd>Gitsigns diffthis<CR>') -- open/close

-- -- Telescope
-- map('n', '<leader><space>', '<cmd>Telescope find_files<CR>')
-- map('n', '<leader>f', '<cmd>Telescope find_files<CR>')
-- map('n', '<leader>F', '<cmd>Telescope grep_string<CR>')
-- map('n', '<leader>/', '<cmd>Telescope live_grep<CR>')
-- map('n', '<leader>tr', '<cmd>Telescope resume<CR>')
-- map('n', '<leader>tb', '<cmd>Telescope buffers<CR>')
-- map('n', '<leader>tgb', '<cmd>Telescope git_branches<CR>')

-- map('n', '<C-/>', 'gcc') -- faster commet

-- map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>')

-- local ok, telescope_builtin = pcall(require, 'telescope.builtin')
-- if ok then
--     map('n', '<leader>m', '<cmd>Telescope marks<CR>')
--     map('n', '<leader>b', '<cmd>Telescope buffers<CR>')
--     map('n', '<leader>?', '<cmd>Telescope keymaps<CR>')
--     map('n', '<leader><leader>', '<cmd>Telescope resume<CR>')

--     map('n', '<leader>xv', function()
--         telescope_builtin.find_files({
--             prompt_title = "< VimRC >",
--             cwd = "$HOME/dotfiles/nvim/"
--         })
--     end, {})

--     map('n', '<leader>xs', function()
--         telescope_builtin.find_files({
--             eidden = true,
--             prompt_title = "< Zsh >",
--             cwd = "$HOME/dotfiles/shell"
--         })
--     end, {})

--     map('n', '<leader>xd', function()
--         telescope_builtin.find_files({
--             hidden = true,
--             prompt_title = "< dotfiles >",
--             cwd = "$HOME/dotfiles"
--         })
--     end, {})

--     -- map('n', '<leader>cht', function()
--     --     telescope_builtin.find_files({
--     --         prompt_title = "< Cht.sh >",
--     --         cwd = "$HOME/dotfiles/cht",
--     --     })
--     -- end, {})

-- end

return M
