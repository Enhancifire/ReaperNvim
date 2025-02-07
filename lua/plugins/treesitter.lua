return {
	-- Treesitter: The Essential Part of Neovim PDE
	{
		"nvim-treesitter/nvim-treesitter",
		-- event = "BufRead",
		-- event = "BufRead",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local ts = require("nvim-treesitter")

			require("nvim-treesitter.configs").setup = {
				ensure_installed = {
					"python",
					"bash",
					"dart",
					"go",
					"json",
					"yaml",
					"html",
					"css",
					"cpp",
					"c",
					"js",
				},
				auto_install = true,
				ignore_install = { "org" },
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

			vim.cmd("TSEnable highlight")
			vim.cmd("TSEnable indent")
			vim.cmd("TSEnable rainbow")
			vim.cmd("TSEnable textobjects.move")
			vim.cmd("TSEnable textobjects.swap")
			vim.cmd("TSEnable textobjects.select")
		end,
		-- dependencies = { "nvim-treesitter-textobjects" },
	},
	{
		"nvim-treesitter/playground",
		event = "BufRead",
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		lazy = false,
		config = function()
			local configs = require("nvim-treesitter.configs")
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
		end,
		-- ft = { "python", "lua", "javascript", "typescript", "dart", "html", "css", "cpp", "c", "json", "yaml" },
		dependencies = { "nvim-treesitter" },
	},
}
