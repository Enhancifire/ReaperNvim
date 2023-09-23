local configs = require("nvim-treesitter.configs")
-- configs.setup = {
-- 	textobjects = {
-- 		select = {
--
-- 			enable = true,
-- 			lookahead = true,
-- 			keymaps = {
-- 				["af"] = "@function.outer",
-- 				["if"] = "@function.inner",
-- 				["ac"] = "@class.outer",
-- 				["ic"] = "@class.inner",
-- 				["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" }
-- 			},
-- 			-- selection_modes = {
-- 			--   ["@parameter.outer"] = 'v',
-- 			--   ["@function.outer"] = 'v',
-- 			--   ["@function.outer"] = 'V',
-- 			-- },
-- 			include_surrounding_whitespace = true,
-- 		}
-- 	}
-- }
print("TSConfig Loaded")
configs.setup = {
	textobjects = {
		select = {
			enable = true,
			lookahead = true,

			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
				["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
			},
			selection_modes = {
				['@parameter.outer'] = 'v',
				['@function.outer'] = 'V',
				['@class.outer'] = '<c-v>',
			},
			include_surrounding_whitespace = true,
		},
	},
}
-- require'nvim-treesitter.configs'.setup {
-- 	textobjects = {
-- 		enable = true,
-- 		lookahead = true,
-- 		keymaps = {
-- 			["af"] = "@function.outer",
-- 			["if"] = "@function.inner",
-- 			["ac"] = "@class.outer",
-- 			["ic"] = "@class.inner",
-- 			["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" }
-- 		},
-- 		-- selection_modes = {
-- 		--   ["@parameter.outer"] = 'v',
-- 		--   ["@function.outer"] = 'v',
-- 		--   ["@function.outer"] = 'V',
-- 		-- },
-- 		include_surrounding_whitespace = true,
-- 	}
-- }
