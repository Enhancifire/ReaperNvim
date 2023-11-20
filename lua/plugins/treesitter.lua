return {
	-- Treesitter: The Essential Part of Neovim PDE
	{
		"nvim-treesitter/nvim-treesitter",
		-- event = "BufRead",
		event = "BufRead",
		build = ":TSUpdate",
		config = function()
		  require("lsp.treesitter-config")
		end,
		-- dependencies = { "nvim-treesitter-textobjects" },
	},
	{
		"nvim-treesitter/playground",
		event = "BufRead",
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		config = function()
			require("lsp.treesitter-textobjects-config")
		end,
		-- ft = { "python", "lua", "javascript", "typescript", "dart", "html", "css", "cpp", "c", "json", "yaml" },
		dependencies = { "nvim-treesitter" },
	},
}
