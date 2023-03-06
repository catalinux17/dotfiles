local overrides = require("custom.plugins.overrides")

---@type NvPluginsTable
local plugins = {
    -- Override plugin definition options

    ["neovim/nvim-lspconfig"] = {
        dependencies = {
            -- format & linting
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require("custom.plugins.null-ls")
            end,
        },

        config = function()
            require("plugins.configs.lspconfig")
            require("custom.plugins.lspconfig")
        end,
    },
    -- overrde plugin configs
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter,
    },
    ["williamboman/mason.nvim"] = {
        override_options = overrides.mason,
    },
    ["nvim-tree/nvim-tree.lua"] = {
        override_options = overrides.nvimtree,
    },
    -- Install a plugin
    ["max397574/better-escape.nvim"] = {
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },
    ["kylechui/nvim-surround"] = {
        config = function()
            require("nvim-surround").setup({})
        end
    },
    ["stevearc/aerial.nvim"] = {
        config = function()
            require("aerial").setup({
                -- optionally use on_attach to set keymaps when aerial has attached to a buffer
                on_attach = function(bufnr)
                    -- Jump forwards/backwards with '{' and '}'
                    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
                    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
                end
            })
            -- You probably also want to set a keymap to toggle aerial
            vim.keymap.set('n', '<leader>:', '<cmd>AerialToggle!<CR>')
        end
    },
    ["nvim-treesitter/nvim-treesitter-textobjects"] = {
        config = function()
            local overrides2 = require("custom.plugins.overrides")
            require("nvim-treesitter.configs").setup({
                incremental_selection = overrides2.treesitter_textobject.incremental_selection,
                textobjects = overrides2.treesitter_textobject.textobjects
            })
        end
    }
    -- remove plugin
    -- ["hrsh7th/cmp-path"] = false,
}

return plugins
