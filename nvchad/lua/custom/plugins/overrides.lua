local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    -- "html",
    -- "css",
    -- "javascript",
    -- "c",

    "go",
    "gomod",
    "gosum",
    "python",
    "markdown",
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
    -- "css-lsp",
    -- "html-lsp",
    -- "typescript-language-server",
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
