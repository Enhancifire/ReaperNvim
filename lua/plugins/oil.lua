-- Oil.Nvim
return {
	"stevearc/oil.nvim",
	init = function()
		local oil = require("oil")

		oil.setup({
			columns = {
				"icon",
				-- "size",
			},
			default_file_explorer = true,
		})
	end,
}
