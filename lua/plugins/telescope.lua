return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			-- require('telescope-config')
			local actions = require("telescope.actions")
			-- local trouble = require("trouble.providers.telescope")
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.55,
							results_width = 0.8,
						},
						width = 0.88,
						height = 0.8,
						preview_cutoff = 120,
						vertical = { mirror = false },
					},
					find_command = {
						"rg",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
					},
					prompt_prefix = " ",
					selection_caret = " ",
					entry_prefix = "  ",
					initial_mode = "insert",
					selection_strategy = "reset",
					sorting_strategy = "ascending",
					layout_strategy = "horizontal",
					file_sorter = require("telescope.sorters").get_fuzzy_file,
					file_ignore_patterns = { "node_modules", "pycache" },
					generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
					path_display = { "truncate" },
					winblend = 0,
					border = {},
					borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
					color_devicons = true,
					-- use_less = true,
					set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
					file_previewer = require("telescope.previewers").vim_buffer_cat.new,
					grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
					qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
					buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
					mappings = {
						i = {
							["<C-n>"] = actions.move_selection_next,
							["<C-p>"] = actions.move_selection_previous,
							["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
							["<esc>"] = actions.close,
							["<CR>"] = actions.select_default + actions.center,
							-- ["<C-t>"] = trouble.open_with_trouble,
						},
						n = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
							-- ["<C-t>"] = trouble.open_with_trouble,
						},
					},
				},
				-- defaults = {
				-- 	vimgrep_arguments = {
				-- 		"rg",
				-- 		"--color=never",
				-- 		"--no-heading",
				-- 		"--with-filename",
				-- 		"--line-number",
				-- 		"--column",
				-- 		"--smart-case",
				-- 	},
				-- 	prompt_prefix = "   ",
				-- 	selection_caret = "  ",
				-- 	entry_prefix = "  ",
				-- 	initial_mode = "insert",
				-- 	selection_strategy = "reset",
				-- 	sorting_strategy = "ascending",
				-- 	layout_strategy = "horizontal",
				-- 	layout_config = {
				-- 		horizontal = {
				-- 			prompt_position = "top",
				-- 			preview_width = 0.55,
				-- 			results_width = 0.8,
				-- 		},
				-- 		vertical = {
				-- 			mirror = false,
				-- 		},
				-- 		width = 0.87,
				-- 		height = 0.80,
				-- 		preview_cutoff = 120,
				-- 	},
				-- 	file_ignore_patterns = { "node_modules" },
				-- 	generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
				-- 	path_display = { "truncate" },
				-- 	winblend = 0,
				-- 	border = {},
				-- 	borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				-- 	color_devicons = true,
				-- 	set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
				-- 	file_previewer = require("telescope.previewers").vim_buffer_cat.new,
				-- 	grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
				-- 	qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
				-- 	-- Developer configurations: Not meant for general override
				-- 	buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
				-- 	mappings = {
				-- 		n = { ["q"] = require("telescope.actions").close },
				-- 	},
				-- },
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true, })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true, })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true, })
		end,
		dependencies = {
			{
				"tsakirist/telescope-lazy.nvim",
				config = function()
					require("telescope").load_extension("lazy")
				end,
			},
			{
				"nvim-telescope/telescope-dap.nvim",
				config = function()
					require("telescope").load_extension("dap")
				end,
			},
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
				dependencies = { "telescope.nvim" },
			},
			{
				"nvim-telescope/telescope-media-files.nvim",
				config = function()
					require("telescope").load_extension("media_files")
				end,
			},
			{
				"nvim-telescope/telescope-file-browser.nvim",
				config = function()
					require("telescope").load_extension("file_browser")
				end,
				dependencies = { "telescope.nvim" },
			},
		},
	},
}
