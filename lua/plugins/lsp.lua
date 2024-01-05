return {

	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			local mason_lsp = require("mason-lspconfig")
			mason_lsp.setup({
				ensure_installed = { "pylsp", "lua_ls" },
			})

			mason_lsp.setup_handlers({
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
		end,
	},

	{
		"nvimdev/lspsaga.nvim",
		-- branch = "nvim6.0",
	},

	{ "onsails/lspkind-nvim" },

	{
		"j-hui/fidget.nvim",
		branch = "legacy",
		config = function() require('fidget').setup() end,
	},
}
