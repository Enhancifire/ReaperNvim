local plugins = {
	-- Help with Nvim Lua
	{
		"tjdevries/nlua.nvim"
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

	{
		"nvim-telescope/telescope-dap.nvim",
		after = "telescope.nvim",
		config = function()
			require("telescope").load_extension("dap")
		end,
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
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-nvim-lua",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-path",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-cmdline",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/cmp-vsnip",
		after = "nvim-cmp",
	},
	{
		"hrsh7th/vim-vsnip",
		after = "nvim-cmp",
	},
	{
		"saadparwaiz1/cmp_luasnip",
		after = "nvim-cmp",
	},



	-- FZF: Searching through the files
	{
		"junegunn/fzf.vim",
		event = "BufWinEnter",
	},


	-- Treesitter: The Essential Part of Neovim PDE
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
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
		requires = "anuvyklack/keymap-layer.nvim", -- needed only for pink hydras
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
	--     opt = true,
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
	-- run = "cd app && yarn install",
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
		init = function() require('dev.colorizer-config') end,
	},

	-- Telescope
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-lua/popup.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		config = function() require('telescope-config') end,
	},

	-- ({
	-- 	"nvim-telescope/telescope-fzf-native.nvim",
	-- 	run = "make",
	-- 	config = function()
	-- 		require("telescope").load_extension("fzf")
	-- 	end,
	-- 	after = "telescope.nvim",
	-- })

	{
		"nvim-telescope/telescope-media-files.nvim",
		config = function()
			require("telescope").load_extension("media_files")
		end,
	},
	-- ({
	-- 	"nvim-telescope/telescope-packer.nvim",
	-- 	config = function()
	-- 		require("telescope").load_extension("packer")
	-- 	end,
	-- 	after = "telescope.nvim",
	-- })
	{
		"nvim-telescope/telescope-file-browser.nvim",
		config = function()
			require("telescope").load_extension("file_browser")
		end,
		after = "telescope.nvim",
	},
	-- ({
	-- 	"nvim-telescope/telescope-arecibo.nvim",
	-- 	-- rocks = { "openssl", "lua-http-parser" },
	-- 	config = function()
	-- 		require("telescope").load_extension("arecibo")
	-- 		require("telescope").setup({
	-- 			extensions = {

	-- 				arecibo = {
	-- 					["selected_engine"] = "google",
	-- 					["url_open_command"] = "xdg-open",
	-- 					["show_http_headers"] = false,
	-- 					["show_domain_icons"] = false,
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- 	after = "telescope.nvim",
	-- })

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
	-- 	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	-- 	-- config = "require('statline-config')"
	-- })

	-- Tabline
	{
		"romgrk/barbar.nvim",
	},

	{
		"glepnir/galaxyline.nvim",
		branch = "main",
	},

	-- Treesitter plugins
	{
		"windwp/nvim-ts-autotag",
		-- after = "nvim-treesitter",
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

	-- Neogit: A Magit Clone
	{
		"TimUntersberger/neogit",
		config = function()
			require("dev.git")
		end,
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

	{
		"rcarriga/nvim-notify",
	},

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

	-- Themes

	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
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


	-- Embedded Terminal
	{
		"akinsho/toggleterm.nvim",
		config = function() require('toggleterm-config') end,
	},

	-- Comments
	{
		"numToStr/Comment.nvim",
		event = "BufWinEnter",
		config = function()
			require("dev.comment-config")
		end,
	},

	-- Autopairs
	-- (
	--   "windwp/nvim-autopairs",
	--   wants = "nvim-treesitter",
	--   module = {
	--     "nvim-autopairs.completion.cmp",
	--     "nvim-autopairs",
	--   },
	--   config = "require('lsp.autopairs-config')",
	--   after = "nvim-cmp",
	-- },

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
