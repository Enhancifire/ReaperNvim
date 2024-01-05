return {
	-- Mason, Null LS and LSP
	{
		"williamboman/mason.nvim"
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"jayp0521/mason-null-ls.nvim"
	},

	{
		"neovim/nvim-lspconfig"
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function() require('lsp.null-ls-config') end,
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
