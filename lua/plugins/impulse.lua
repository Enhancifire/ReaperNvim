local os = require('os')
local notion_key = os.getenv("NOTION_SECRET")
return {
	"chrsm/impulse.nvim",
	config = function()
		require('impulse').setup({
			api_key = notion_key,
		})
	end,
}
