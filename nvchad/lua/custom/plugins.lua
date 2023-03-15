local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- format & linting
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },
    -- overrde plugin configs
    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },
    -- Install a plugin

    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },
    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },
    -- Install a plugin

    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({})
        end
    },
    -- ["stevearc/aerial.nvim"] = {
    --     config = function()
    --         require("aerial").setup({
    --             -- optionally use on_attach to set keymaps when aerial has attached to a buffer
    --             on_attach = function(bufnr)
    --                 -- Jump forwards/backwards with '{' and '}'
    --                 vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
    --                 vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
    --             end
    --         })
    --         -- You probably also want to set a keymap to toggle aerial
    --         vim.keymap.set('n', '<leader>:', '<cmd>AerialToggle!<CR>')
    --     end
    -- },
    -- {
    --     "nvim-treesitter/nvim-treesitter-textobjects",
    --     opts = overrides.treesitter_textobject
    --     -- config = function()
    --     --     local overrides2 = require("custom.plugins.overrides")
    --     --     require("nvim-treesitter.configs").setup({
    --     --         incremental_selection = overrides2.treesitter_textobject.incremental_selection,
    --     --         textobjects = overrides2.treesitter_textobject.textobjects
    --     --     })
    --     -- end
    -- },
    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },

    -- Uncomment if you want to re-enable which-key
    {
      "folke/which-key.nvim",
      enabled = false,
    },
}

return plugins
