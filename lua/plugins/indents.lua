-- Indent Guides
return {
	"lukas-reineke/indent-blankline.nvim",
	-- event = "BufRead",
	config = function()
		require("ibl").setup({
			exclude = {
				filetypes = {
					"dashboard"
				},
				buftypes = {
					"dashboard"
				},
			}
		})
		-- require("indent_blankline").setup({
		-- 	-- for example, context is off by default, use this to turn it on
		-- 	show_current_context = true,
		-- 	show_current_context_start = true,
		-- 	buftype_exclude = { "terminal" },
		-- 	filetype_exclude = {
		-- 		"dashboard",
		-- 		"NvimTree",
		-- 		"packer",
		-- 		"alpha",
		-- 		"lazy",
		-- 	},
		-- })
	end,
}
