local Hydra = require("hydra")

local chwindow_hint = "Change: h j k l; Resize: H J K L e; Close Window: Q; Quit: q, ESC;"

Hydra({
	name = "Change / Resize Window",
	hint = chwindow_hint,
	mode = { "n" },
	body = "<C-t>",
	config = {
		-- color = "pink",
		invoke_on_body = true,
	},

	heads = {
		-- Change Window
		{ "h", ":wincmd h<CR>" },
		{ "j", ":wincmd j<CR>" },
		{ "k", ":wincmd k<CR>" },
		{ "l", ":wincmd l<CR>" },

		-- Resize Window
		{ "H", "<C-w>3<" },
		{ "J", "<C-w>3-" },
		{ "K", "<C-w>3+" },
		{ "L", "<C-w>3>" },

		-- Split Windows
		{ "s", ":sp<CR>" },
		{ "v", ":vs<CR>" },

		-- Equalize Window Size
		{ "e", "<C-w>3=" },

		-- Close Active Window
		{ "Q", ":q<CR>" },

		-- Exit Hydra
		{ "q", nil, { exit = true, nowait = true } },
		{ "<ESC>", nil, { exit = true, nowait = true } },
	},
})
