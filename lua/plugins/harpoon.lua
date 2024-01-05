-- Marks Navigation
return {
	"theprimeagen/harpoon",
	config = function()
		local ui = require("harpoon.ui")
		-- local mark = require("harpoon.mark")

		vim.keymap.set("n", "<M-1>", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "<M-2>", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "<M-3>", function()
			ui.nav_file(3)
		end)
		vim.keymap.set("n", "<M-4>", function()
			ui.nav_file(4)
		end)
		vim.keymap.set("n", "<M-5>", function()
			ui.nav_file(5)
		end)
		vim.keymap.set("n", "<M-6>", function()
			ui.nav_file(6)
		end)
		vim.keymap.set("n", "<M-o>", function()
			ui.nav_prev()
		end)
		vim.keymap.set("n", "<M-i>", function()
			ui.nav_next()
		end)
		vim.keymap.set("n", "<leader>tm", function()
			ui.toggle_quick_menu()
		end)

		require("telescope").load_extension("harpoon")
	end,

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	event = "BufWinEnter",
}
