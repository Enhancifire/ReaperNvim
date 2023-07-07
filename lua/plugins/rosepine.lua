return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "auto",
			dark_variant = "main",
			bold_vert_split = true,
			disable_background = false,
			disable_float_background = false,
			disable_italics = false,
			-- groups = {
			-- 	background = "base",
			-- 	panel = "surface",
			-- },
		})
	end,
}
