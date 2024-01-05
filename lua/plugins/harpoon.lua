-- Marks Navigation
return {
	"theprimeagen/harpoon",
	config = function()
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<C-1>", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "<C-2>", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "<C-3>", function()
			ui.nav_file(3)
		end)
		vim.keymap.set("n", "<C-4>", function()
			ui.nav_file(4)
		end)
	end,
	event = "BufWinEnter",
}
