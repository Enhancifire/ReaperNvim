return {
	-- Git Signs
	{
		"lewis6991/gitsigns.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("gitsigns").setup({
				current_line_blame = false,
			})
		end,
	},

	-- -- Neogit: A Magit Clone
	-- {
	-- 	"TimUntersberger/neogit",
	-- 	config = function()
	-- 		require("dev.git")
	-- 	end,
	-- },

	{
		"kdheepak/lazygit.nvim",
	},
	{
		"tpope/vim-fugitive",
	}
}
