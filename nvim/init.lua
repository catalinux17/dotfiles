--[[

Neovim init file
Version: 0.63.1 - 2022/07/05
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

local vscode = vim.g.vscode == 1

-- Import Lua modules
require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')

if not vscode then
    require('plugins/nvim-tree')
    require('plugins/indent-blankline')
    require('plugins/nvim-cmp')
    require('plugins/nvim-lspconfig')
    require('plugins/nvim-treesitter')
    require('plugins/alpha-nvim')
end


