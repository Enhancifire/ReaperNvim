local plugins = {
	-- Help with Nvim Lua
	{
		"folke/neodev.nvim",
	},


	-- Debugger and Debugging
	{
		"mfussenegger/nvim-dap",
		init = function()
			require("dev.debugger")
		end,
	},
	{
		"nvim-neotest/nvim-nio"
	},
	{
		"rcarriga/nvim-dap-ui"
	},
	{
		"mfussenegger/nvim-dap-python"
	},

	{
		"theHamsta/nvim-dap-virtual-text"
	},

	-- Keybindings
	-- WhichKey: Defining and Showing Hotkeys
	{ "folke/which-key.nvim" },

	-- Hydra: For epic and quick vim usage
	{
		"anuvyklack/hydra.nvim",
		dependencies = "anuvyklack/keymap-layer.nvim", -- needed only for pink hydras
	},

	-- Command Pallette
	{ "mrjones2014/legendary.nvim" },

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

	-- Checking the Starup Time for Neovim
	{ "tweekmonster/startuptime.vim" },

	-- For Markdown Previews
	-- {
	-- "iamcco/markdown-preview.nvim",
	-- build = "cd app && yarn install",
	-- cmd = "MarkdownPreview",
	-- event = "BufWinEnter",
	--},

	-- Devicons
	{ "kyazdani42/nvim-web-devicons" },


	-- Oil.Nvim
	{
		"stevearc/oil.nvim",
		init = function() require('dev.oil-config') end,
	},

	-- Snippets
	"honza/vim-snippets",
	-- "sirver/ultisnips",
	"cstrap/flask-snippets",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

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

	-- Code Structure Navigation
	{
		"stevearc/aerial.nvim",
		config = function() require('dev.aerial-config') end,
		-- event = "BufWinEnter",
	},



	-- {
	--   "simnalamburt/vim-mundo",
	--   event = "BufWinEnter",
	-- },

	-- ({
	--   "epwalsh/obsidian.nvim",
	--   config = function()
	--     require("notes.obsidian")
	--   end,
	-- })

	{
		"HiPhish/rainbow-delimiters.nvim",
		config = function()
			require('appearance.rainbow')
		end,
	},
}

return plugins
