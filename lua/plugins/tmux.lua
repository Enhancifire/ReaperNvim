return {
	"aserowy/tmux.nvim",
	config = function()
		require("tmux").setup({
			navigation = {
				cycle_navigation = true,
			}
			--       copy_sync = {
			--         enable = true,
			--         redirect_to_clipboard = true,
			--       },
			--       navigation = {
			--         enable_default_keybindings = true,
			--       },
			--       resize = {
			--         enable_default_keybindings = true,
			--       },
			--       sync_clipboard = true,
		})
	end,
}
