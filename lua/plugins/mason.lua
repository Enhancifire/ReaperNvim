-- Null LS and LSP
return {
	{
		"jayp0521/mason-null-ls.nvim"
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			local masonnull = require("mason-null-ls")
			masonnull.setup({
				ensure_installed = { "black" },
			})

			local formatting = null_ls.builtins.formatting

			null_ls.setup({
				sources = {
					formatting.dart_format,
				},
			})
		end,
	},
}
