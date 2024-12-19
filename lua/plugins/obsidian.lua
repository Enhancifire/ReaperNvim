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
				path = "D:/06 - Notes/Notes",
			}
		},
		notes_subdir = "/",
		new_notes_location = "notes_subdir",
		mappings = {
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
		},
		daily_notes = {
			folder = "07 - Daily",
			date_format = "%Y%m%d",
			alias_format = "%Y-%m-%d",
			default_tags = { "daily" },
			template = "99 - Meta/00 - Templates/(TEMPLATE) Daily.md"
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
		},
		ui = {
			enable = true,
		},
	},
}
