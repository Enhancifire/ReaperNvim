return {
	-- Dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require('appearance.dashboard')
		end,
		lazy = false,
	},

	-- 'goolord/alpha-nvim',
	-- event = "VimEnter",
	-- -- dependencies = { 'nvim-tree/nvim-web-devicons' },
	-- config = function()
	-- 	require('alpha').setup(
	-- 		-- require('alpha.themes.startify').config
	-- 		require('alpha.themes.dashboard').config
	-- 	)
	-- end


}
