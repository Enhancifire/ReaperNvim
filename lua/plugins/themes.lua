return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				transparent_background = true,
				term_colors = true,
				compile = {
					enabled = true,
					path = vim.fn.stdpath("cache") .. "/catppuccin",
					suffix = "_compiled",
				},
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = { "bold" },
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = { "italic" },
					properties = {},
					types = {},
					operators = {},
				},
				integrations = {
					treesitter = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
						underlines = {
							errors = { "underline" },
							hints = { "underline" },
							warnings = { "underline" },
							information = { "underline" },
						},
					},
					coc_nvim = true,
					lsp_trouble = false,
					cmp = true,
					lsp_saga = true,
					gitgutter = false,
					gitsigns = true,
					telescope = {
						enabled = true,
						transparent_panel = true,
						transparent_background = true,
					},
					nvimtree = {
						enabled = true,
						show_root = true,
						transparent_panel = false,
					},
					neotree = {
						enabled = false,
						show_root = true,
						transparent_panel = false,
					},
					dap = {
						enabled = false,
						enable_ui = false,
					},
					which_key = true,
					indent_blankline = {
						enabled = true,
						colored_indent_levels = true,
					},
					dashboard = true,
					neogit = true,
					vim_sneak = false,
					fern = false,
					barbar = false,
					bufferline = true,
					markdown = true,
					lightspeed = false,
					ts_rainbow = false,
					hop = false,
					notify = true,
					telekasten = true,
					symbols_outline = true,
					mini = false,
				},
			})
			vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				bold_vert_split = true,
				disable_background = false,
				disable_float_background = false,
				disable_italics = false,
				-- groups = {
				-- 	background = "base",
				-- 	panel = "surface",
				-- },
			})
		end,
	},
	{
		"tiagovla/tokyodark.nvim",
	},
	-- {
	-- 	"dracula/vim",
	-- 	as = "dracula",
	-- },
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- },
	-- {
	-- 	"joshdick/onedark.vim",
	-- },
	-- {
	-- 	"sainnhe/everforest",
	-- },
	-- {
	-- 	"sainnhe/sonokai",
	-- },
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- },

}
