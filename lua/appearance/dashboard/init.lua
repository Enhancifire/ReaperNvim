local db = require("dashboard")
local home = os.getenv("HOME")
-- vim.g.dashboard_default_executive = "telescope"
--
--
-- -- db.custom_header = {
-- -- 	'"Time flows on,',
-- -- 	"Like a Mighty Dream,",
-- -- 	'Like an Unending Dream"',
-- -- }
--
-- -- db.custom_header = reapernvim
-- db.preview_file_width = 160
-- db.preview_file_height = 15
--
-- db.custom_center = {
-- 	{
-- 		icon = "  ",
-- 		desc = "Recent Session              ",
-- 		action = "SessionLoad",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "Open Files                  ",
-- 		action = "Files",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "File Browser                ",
-- 		action = "NvimTreeToggle",
-- 	},
-- 	{
-- 		icon = "☣  ",
-- 		desc = "Open Projects               ",
-- 		action = "Telescope projects",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "Open Personal Dotfiles      ",
-- 		action = "e ~/.config/nvim/init.lua",
-- 	},
-- }
--
-- db.custom_footer = {
-- 	[[]],
-- 	[[☣  WELCOME TO NEOVIM! ☣ ]],
-- }

db.setup({
	theme = "hyper",
	config = {
		header = {
			"                                                              ",
			"    ⢀⣀⣤⣤⣤⠤⢤⣤⣤⣤⣤⣄⣀⡀           ⢀⣠⣤⣄⡀            ⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀   ",
			" ⢀⣤⠚⠩⠁⡄ ⠠⣤⠒⠒⣂ ⢈⣨⣭⣿⠛⠶⣦⣤⣄⡀   ⢠⣾⡟⠉⠉⠝⠿⠇    ⢀⣠⡤⠔⠒⣻⠟⠋⠩⠉⢁⣀⡀  ⣶  ⠙⡛⠷  ",
			" ⠸⢟⡠⠒⢊⡤  ⠋⣠ ⠈⣉⣉⣉⣉⣀⣛⣿⡒⠭⡿⢿⣷⣤⣤⣀⣽⣇⣴⠆⣴⡃⢀⣠⣤⠴⣚⣫⡥ ⠒⠛⠁⣀⣉⣉⣙⢏⡉  ⢀⣼⣤⣜⠳⡦⠂  ",
			"   ⠐⠚⠫⣤⠖⢣⣤⡕ ⠉⣩⣤⠔ ⠂⣋⣭⣥⣤⠴⠛⣛⠈⢩⣿⠿⠛⢉  ⡐⠞⠫⢍⠙⣓⠢⠴⣥⣍⣙⠛⢓⡢⢤⣬⠉⠅ ⣤⡜⢛⠻⠛⠉⠁   ",
			"      ⠘⢔⢎⣡⡔⠂⣠⡿⠁⠒⢛⡻⢛⣩⠅  ⠉  ⠚⣯⣄⢠⣿⢀⣾⠇ ⠓ ⠁⠂⠈⠍⠐⠈⡉⣿⠛⣛⠛⠉⣤⣰⣿⣿⡟⠛⠁      ",
			"        ⠙⠛⠐⠚⠋ ⠒⣲⡿⠇⣋        ⢺⡏⠈⣀ ⠉⠈        ⠙⢿⠟⢰⣖⡢ ⠂⠒⠚⠉         ",
			"             ⣴⠛⠅⢀⣾⠟⢃       ⢹⠃⠠⠁⠈⠩         ⢠⣿ ⣀⢹⣿⡷             ",
			"             ⢿⣤⢚⣫⠅         ⢸⠇ ⢚ ⢀         ⣸⡇ ⠉⣿⣿⠇             ",
			"             ⠈⠛⢻⣥⡚⠔⣠⢣⣄⡀    ⢸⡇ ⢘ ⠈ ⠠⠈    ⣀⣰⡿⣧⣄⠾⠋⠁              ",
			"                ⠈⠑⠁        ⠘⣿⡀⣈⣀    ⠈  ⠈⠙⠁                    ",
			"                            ⠘⣷⠁                               ",
			"                             ⠙⣤                               ",
			"                              ⠛⠂                              ",
			"                                                              ",
			"Time flows on,",
			"Like a Mighty Dream,",
			"Like an Unending Dream",
			"",
		},
		-- week_header = {
		-- 	enable = true,
		-- },
		shortcut = {
			{ desc = "Find Files ",   key = "f", action = ":Telescope find_files" },
		},
		hide = {
		  statusline,
		  tabline,
		  winbar,
		},
		packages = { enable = true },
		mru = {
			limit = 5,
		},
		footer = {
			[[Made with ♥️ by Faiz]],
		},
	},
})
