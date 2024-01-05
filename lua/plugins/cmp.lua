-- Everything CMP
return {
	{
		"hrsh7th/nvim-cmp",
		event = "BufWinEnter",
		config = function() require('lsp/cmp-config') end,
	},
	{
		"hrsh7th/cmp-nvim-lsp"
	},
	{
		"hrsh7th/cmp-buffer",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-nvim-lua",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-path",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-cmdline",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-vsnip",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/vim-vsnip",
		dependencies = { "nvim-cmp" },
	},
	{
		"saadparwaiz1/cmp_luasnip",
		dependencies = { "nvim-cmp" },
	},
}
