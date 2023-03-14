local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",

        "html",
        "css",
        "javascript",
        "svelte",
        "typescript",
        "c",

        "go",
        "gomod",
        "gosum",
        "python",
        "markdown",
        "markdown_inline",

        "json",
        "bash",
        "rust",
        "toml",
        "yaml"
    },
}

M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",
        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "svelet-language-server",
        -- "deno",
        "bash-language-server",
        "black",
        "ruff",
        "gofumpt",
        "gopls",
        "pyright",
        "rust-analyzer",
        "rust-fmt",
        "yaml-language-server",
    },
}
M.treesitter_textobject = {
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<m-space>',
            node_incremental = '<m-space>',
            -- init_selection = '<c-space>',
            node_decremental = '<m-backspace>'
        }
    },
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["aa"] = "@parameter.outer",
                -- You can optionally set descriptions to the mappings (used in the desc parameter of
                -- nvim_buf_set_keymap) which plugins like which-key display
                ["ic"] = {
                    query = "@class.inner",
                    desc = "Select inner part of a class region"
                }
            },
            -- You can choose the select mode (default is charwise 'v')
            --
            -- Can also be a function which gets passed a table with the keys
            -- * query_string: eg '@function.inner'
            -- * method: eg 'v' or 'o'
            -- and should return the mode ('v', 'V', or '<c-v>') or a table
            -- mapping query_strings to modes.
            selection_modes = {
                ['@parameter.outer'] = 'v', -- charwise
                ['@function.outer'] = 'V',  -- linewise
                ['@class.outer'] = '<c-v>'  -- blockwise
            },
            -- If you set this to `true` (default is `false`) then any textobject is
            -- extended to include preceding or succeeding whitespace. Succeeding
            -- whitespace has priority in order to act similarly to eg the built-in
            -- `ap`.
            --
            -- Can also be a function which gets passed a table with the keys
            -- * query_string: eg '@function.inner'
            -- * selection_mode: eg 'v'
            -- and should return true of false
            include_surrounding_whitespace = true
        },
        -- swap = {
        --     enable = true,
        --     swap_next = {
        --         ["<leader>a"] = "@parameter.inner"
        --     },
        --     swap_previous = {
        --         ["<leader>A"] = "@parameter.inner"
        --     }
        -- },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]f"] = "@function.outer",
                ["]c"] = {
                    query = "@class.outer",
                    desc = "Next class start"
                },
                ["]a"] = "@parameter.outer"
            },
            goto_next_end = {
                ["]F"] = "@function.outer",
                ["]C"] = "@class.outer"
            },
            goto_previous_start = {
                ["[f"] = "@function.outer",
                ["[c"] = "@class.outer",
                ["[a"] = "@parameter.outer"
            },
            goto_previous_end = {
                ["[F"] = "@function.outer",
                ["[C"] = "@class.outer"
            }
        },
--         lsp_interop = {
--             enable = true,
--             border = 'none',
--             peek_definition_code = {
--                 ["<leader>Df"] = "@function.outer",
--                 ["<leader>Dc"] = "@class.outer"
--             }
--         }
    }
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
