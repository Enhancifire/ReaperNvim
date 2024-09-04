return {
	"epwalsh/obsidian.nvim",
	-- ft = "markdown",
	-- lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Notes/",
			}
		},
		daily_notes = {
			folder = "07 - Daily",
			date_format = "%y%m%d",
			alias_format = "%Y-%m-%d",
			default_tags = { "daily" },
		},
		note_id_func = function(title)
			local suffix = ""
			if title ~= nil then
				-- If title is given, transform it into valid file name.
				-- suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
				suffix = title
			else
				-- if title is nil, just add 4 random uppercase letters to the suffix.
				-- for _ = 1, 4 do
				-- 	suffix = suffix .. string.char(math.random(65, 90))
				-- end
				suffix = ""
			end
			return tostring(os.date('%Y%m%d%H%M')) .. " - " .. suffix
		end,

		templates = {
			folder = "99 - Meta/00 - Templates",
			date_format = "%Y-%m-%d"
		},

		attachments = {
			img_folder = "99 - Meta/01 - Attachments"
		}
	},

	-- config = function()
	-- 	local obsidian = require("obsidian")
	--
	-- 	obsidian.setup({
	-- 		dir = "",
	-- 		daily_notes = {
	-- 			folder = "daily",
	-- 		},
	-- 	})
	-- end,
}
