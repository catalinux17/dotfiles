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

	-- remove plugin
	-- ["hrsh7th/cmp-path"] = false,
}

return plugins
