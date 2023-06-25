return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_color = "#54577C",
		})


		vim.notify = require("notify")
	end
}
