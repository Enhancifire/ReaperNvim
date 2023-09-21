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
		"rcarriga/nvim-dap-ui"
	},
	{
		"mfussenegger/nvim-dap-python"
	},

	{
		"theHamsta/nvim-dap-virtual-text"
	},

	-- Mason, Null LS and LSP
	{
		"williamboman/mason.nvim"
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"jayp0521/mason-null-ls.nvim"
	},

	{
		"neovim/nvim-lspconfig"
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function() require('lsp.null-ls-config') end,
	},

	{
		"tami5/lspsaga.nvim",
		branch = "nvim6.0",
	},

	{ "onsails/lspkind-nvim" },
	{
		"j-hui/fidget.nvim",
		branch = "legacy",
		config = function() require('fidget').setup() end,
	},

	-- Everything CMP
	{
		"hrsh7th/nvim-cmp",
		event = "BufWinEnter",
		config = function() require('lsp/cmp-config') end,
	},


	{
		"hrsh7th/cmp-nvim-lsp"
	},
	{
		"hrsh7th/cmp-buffer",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-nvim-lua",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-path",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-cmdline",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/cmp-vsnip",
		dependencies = { "nvim-cmp" },
	},
	{
		"hrsh7th/vim-vsnip",
		dependencies = { "nvim-cmp" },
	},
	{
		"saadparwaiz1/cmp_luasnip",
		dependencies = { "nvim-cmp" },
	},



	-- FZF: Searching through the files
	{
		"junegunn/fzf.vim",
		event = "BufWinEnter",
	},


	-- Treesitter: The Essential Part of Neovim PDE
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("lsp.tsconfig")
		end,
	},

	{
		"nvim-treesitter/playground",
		event = "BufRead",
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



	-- Flutter Development
	{
		"akinsho/flutter-tools.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function() require('dev.flutter') end,
	},

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

	-- Nvim-Tree-Lua
	{
		"kyazdani42/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		init = function() require('dev.tree') end,
	},

	-- Oil.Nvim
	{
		"stevearc/oil.nvim",
		init = function() require('dev.oil-config') end,
	},

	-- Snippets
	"honza/vim-snippets",
	"sirver/ultisnips",
	"cstrap/flask-snippets",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- CSS Color Preview
	{
		"uga-rosa/ccc.nvim",
		config = {},
	},

	-- Telescope
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-lua/popup.nvim" },

	-- Marks Navigation
	{
		"theprimeagen/harpoon",
		config = function()
			require("dev.harpoon-config")
		end,
		event = "BufWinEnter",
	},

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

	-- Dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require('appearance.dashboard')
		end
	},

	-- Git Signs
	{
		"lewis6991/gitsigns.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("gitsigns").setup({
				current_line_blame = false,
			})
		end,
	},

	-- -- Neogit: A Magit Clone
	-- {
	-- 	"TimUntersberger/neogit",
	-- 	config = function()
	-- 		require("dev.git")
	-- 	end,
	-- },

	{
		"kdheepak/lazygit.nvim",
	},

	-- Appearance--
	-- Indent Guides
	{
		"lukas-reineke/indent-blankline.nvim",
		-- event = "BufRead",
		config = function()
			require("appearance.indents")
		end,
	},

	-- Fancy UI

	-- ({ "MunifTanjim/nui.nvim" })

	{
		"stevearc/dressing.nvim",
		event = "VimEnter",
		config = function()
			require("appearance.ui.dressing-config")
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
			require("appearance.ui.transparent_config")
		end,
	},

	-- Comments
	{
		"numToStr/Comment.nvim",
		config = {
			opleader = {
				-- Line-comment Keymap
				line = "gc",
				-- Block-comment Beymap
				block = "gb",
			},
			mappings = {
				basic = true,
				extra = true,
			},
			pre_hook = nil,
			post_hook = nil,
			ignore = nil,
		},
	},

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


	-- Wakatime: Keeping Track of your Coding Progress
	{
		"wakatime/vim-wakatime",
	},

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

	-- Zen/Presentation Mode
	-- ({
	-- 	{
	-- 		"folke/twilight.nvim",
	-- 		config = "require('appearance.zen.twilight-config')",
	-- 		event = "BufWinEnter",
	-- 	},
	-- 	{
	-- 		"folke/zen-mode.nvim",
	-- 		config = "require('appearance.zen.mode')",
	-- 		event = "BufWinEnter",
	-- 	},
	-- })


	-- {
	--   "simnalamburt/vim-mundo",
	--   event = "BufWinEnter",
	-- },

	{
		"aserowy/tmux.nvim",
		config = function()
			require("dev.tmux")
		end,
	},
	-- ({
	--   "aserowy/tmux.nvim",
	--   config = function()
	--     require("tmux").setup({
	--       copy_sync = {
	--         enable = true,
	--         redirect_to_clipboard = true,
	--       },
	--       navigation = {
	--         enable_default_keybindings = true,
	--       },
	--       resize = {
	--         enable_default_keybindings = true,
	--       },
	--       sync_clipboard = true,
	--     })
	--   end,
	-- })

	-- ({
	--   "epwalsh/obsidian.nvim",
	--   config = function()
	--     require("notes.obsidian")
	--   end,
	-- })

	-- AI Tools
	-- Almighty Github Copilot
	{
		"github/copilot.vim",
	},
}

return plugins
