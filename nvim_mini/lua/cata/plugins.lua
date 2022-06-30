return require('packer').startup(function()
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use 'tpope/vim-surround'
    use 'tpope/vim-abolish'
    use 'tpope/vim-commentary'

    use 'mhinz/vim-startify'

    use 'ryanoasis/vim-devicons'
    use 'machakann/vim-highlightedyank'
    use 'morhetz/gruvbox'
    use 'ayu-theme/ayu-vim'

end)
