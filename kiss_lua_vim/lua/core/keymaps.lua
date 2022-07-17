-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Custom

map({'n', 'v'}, 'U', ':redo<CR>')
map('n', '<leader>Y', 'ggVG"+y')


-- Comment

-- map({'n', 'v'}, '<C-c>', 'gcc', { noremap = false })

-- Disable arrow keys
-- map('', '<up>', '<nop>')
-- map('', '<down>', '<nop>')
-- map('', '<left>', '<nop>')
-- map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Clear search highlighting with <leader> and h
map('n', '<leader>h', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
-- map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
-- map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-b>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<C-S-b>', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close
-- map('n', '<leader>h', ':nohlsearch<CR>')


map('n', '<leader>gd', ':Gitsigns diffthis<CR>')          -- open/close




map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>F', ':Telescope grep_string<CR>')
map('n', '<leader>/', ':Telescope live_grep<CR>')
map('n', '<leader><space>', ':Telescope find_files<CR>')
map('n', '<leader>tr', ':Telescope resume<CR>')
map('n', '<leader>tb', ':Telescope buffers<CR>')
map('n', '<leader>tgb', ':Telescope git_branches<CR>')


local telescope_builtin = require'telescope.builtin'

map('n', '<leader>VRC', function()
    telescope_builtin.find_files({
    prompt_title = "< VimRC >",
    cwd = "$HOME/dotfiles/kiss_lua_vim/",
})
end, {})

map('n', '<leader>ZSH', function()
    telescope_builtin.find_files({
    hidden = true,
    prompt_title = "< Zsh >",
    cwd = "$HOME/dotfiles/shell",
})
end, {})

map('n', '<leader>DOT', function()
    telescope_builtin.find_files({
        hidden = true,
        prompt_title = "< dotfiles >",
        cwd = "$HOME/dotfiles",
    })
end, {})

-- map('n', '<leader>cht', function()
--     telescope_builtin.find_files({
--         prompt_title = "< Cht.sh >",
--         cwd = "$HOME/dotfiles/cht",
--     })
-- end, {})


