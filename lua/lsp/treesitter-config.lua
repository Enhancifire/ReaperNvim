local ts = require("nvim-treesitter")
local configs = require("nvim-treesitter.configs")

configs.setup = {
	ensure_installed = {
		"python",
		"bash",
		"dart",
		-- "lua",
		"json",
		"yaml",
		"html",
		"css",
		"cpp",
		"c",
		"js",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	textobjects = {
		enable = true,
		lookahead = true,
		keymaps = {
			["af"] = "@function.outer",
			["if"] = "@function.inner",
			["ac"] = "@class.outer",
			["ic"] = "@class.inner",
			["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" }
		},
		-- selection_modes = {
		--   ["@parameter.outer"] = 'v',
		--   ["@function.outer"] = 'v',
		--   ["@function.outer"] = 'V',
		-- },
		include_surrounding_whitespace = true,
	}

}

vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "BufNew", "BufNewFile", "BufWinEnter" }, {
	group = vim.api.nvim_create_augroup("TS_FOLD", {}),
	callback = function()
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
	end,
})
