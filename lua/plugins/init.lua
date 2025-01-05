local plugins = {
	-- Dispatch: To Quickly Build
	-- ({
	--   {
	--     "tpope/vim-dispatch",
	--     lazy = true,
	--     cmd = { "Dispatch", "Make", "Focus", "Start" },
	--     event = "BufWinEnter",
	--   },
	--   {
	--     "radenling/vim-dispatch-neovim"
	--   },
	-- })

	-- ({
	--   "olimorris/persisted.nvim",
	--   config = function()
	--     require("persisted").setup()
	--   end,
	-- })

	-- Go Through Matching Text
	-- ({
	--   "andymass/vim-matchup",
	--   event = "BufWinEnter",
	-- })


	-- For Markdown Previews
	-- {
	-- "iamcco/markdown-preview.nvim",
	-- build = "cd app && yarn install",
	-- cmd = "MarkdownPreview",
	-- event = "BufWinEnter",
	--},

	-- Devicons
	{ "kyazdani42/nvim-web-devicons" },

	-- CSS Color Preview
	{
		"uga-rosa/ccc.nvim",
		config = function()
			require("dev.colorizer-config")
		end,
	},

	-- Telescope
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-lua/popup.nvim" },

	-- -- Statusline
	-- ({
	-- 	"tamton-aquib/staline.nvim",
	-- 	dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
	-- 	-- config = "require('statline-config')"
	-- })

	-- Tabline
	{
		"romgrk/barbar.nvim",
	},


	-- Treesitter plugins
	{
		"windwp/nvim-ts-autotag",
		dependencies = { "nvim-treesitter" },
	},
	{
		"junegunn/rainbow_parentheses.vim",
		-- event = "BufWinEnter",
	},

	-- Appearance--

	-- Fancy UI

	{ "MunifTanjim/nui.nvim" },

	{
		"stevearc/dressing.nvim",
		event = "VimEnter",
		config = function()
			require("appearance.ui.dressing-config")
		end,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("appearance.ui.noice-config")
		end,
	},

	-- ({
	-- 	"folke/noice.nvim",
	-- 	event = "VimEnter",
	--
	-- 	config = function()
	-- 		require("appearance.ui.noice-config")
	-- 	end,
	-- })

	-- ({
	-- 	"gorbit99/codewindow.nvim",
	-- 	config = function()
	-- 		require("appearance.ui.minimap")
	-- 	end,
	-- 	event = "BufWinEnter",
	-- })

	-- ({
	-- 	"rainbowhxch/beacon.nvim",
	-- 	config = function()
	-- 		require("appearance.ui.flasher")
	-- 	end,
	-- 	event = "BufRead",
	-- })

	{
		"xiyaowong/nvim-transparent",
		lazy = false,
		config = function()
			require("transparent").setup({})
		end,
	},

	-- Comments

	-- Autopairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require('lsp.autopairs-config')
		end,
		dependencies = { "nvim-treesitter", "nvim-cmp" },
	},

	-- Hopper for Hopping through the Code
	-- ({
	-- 	"phaazon/hop.nvim",
	-- 	branch = "v1", -- optional but strongly recommended
	-- 	config = function()
	-- 		require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
	-- 	end,
	-- 	event = "BufWinEnter",
	-- })

	{
		"folke/lsp-colors.nvim",
		config = function()
			require("lsp.color-config")
		end,
		-- event = "BufWinEnter",
	},



	{
		"folke/trouble.nvim",
		config = function() require('lsp.trouble-config') end,
		-- event = "BufWinEnter",
	},

	-- ({
	-- 	"sotte/presenting.vim",
	-- 	event = "BufRead",
	-- })


	-- {
	--   "simnalamburt/vim-mundo",
	--   event = "BufWinEnter",
	-- },

}

return plugins
