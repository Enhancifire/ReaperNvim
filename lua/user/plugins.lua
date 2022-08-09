local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function()

  -- The One Plugin To Rule Them All
  use {
    'wbthomason/packer.nvim'
  }

  -- Intellisense / LSP
  use {
    {
      'tami5/lspsaga.nvim',
      branch = 'nvim6.0'
    },
    {
      'neovim/nvim-lspconfig'
    },
    {
      'williamboman/nvim-lsp-installer'
    },
    {
      'tjdevries/nlua.nvim'
    },
    {
      'hrsh7th/nvim-cmp',
      event = "BufWinEnter",
      config = "require('lsp/cmp-config')"
    },
    {
      'hrsh7th/cmp-nvim-lsp',
    },
    --[[ {
      'hrsh7th/cmp-copilot',
      after = 'nvim-cmp'
    }, ]]
    {
      'hrsh7th/cmp-buffer',
      after = "nvim-cmp",
    },
    {
      'hrsh7th/cmp-nvim-lua',
      after = "nvim-cmp",
    },
    {
      'hrsh7th/cmp-path',
      after = "nvim-cmp",
    },
    {
      'hrsh7th/cmp-cmdline',
      after = "nvim-cmp"
    },
    {
      'hrsh7th/cmp-vsnip',
      after = "nvim-cmp",
    },
    {
      'hrsh7th/vim-vsnip',
      after = "nvim-cmp",
    },
    {
      'saadparwaiz1/cmp_luasnip',
      after = "nvim-cmp"
    },
    {
      'onsails/lspkind-nvim'
    },
  }

  -- Hydra: For epic and quick vim usage
  use {
    'anuvyklack/hydra.nvim',
    requires = 'anuvyklack/keymap-layer.nvim' -- needed only for pink hydras
  }

  -- Tabnine: For Less typing and more fun
  use {
    'tzachar/cmp-tabnine',
    after = "nvim-cmp",
    config = "require('lsp.tabnine-config')",
    run='./install.sh'
  }

  -- Treesitter: The Essential Part of Neovim PDE
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = "require('treesitter-config')"
  }

  -- WhichKey: Defining and Showing Hotkeys
  use {
    "folke/which-key.nvim"
  }

  -- Flutter Development
  use {
    'akinsho/flutter-tools.nvim',
    requires = 'nvim-lua/plenary.nvim',
    after = "telescope.nvim",
    config = "require('dev.flutter')"
  }


  -- Dispatch: To Quickly Build
  use {
    'tpope/vim-dispatch',
    opt = true,
    cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
  }
  use {
    'radenling/vim-dispatch-neovim'
  }

  -- Go Through Matching Text
  use {
    'andymass/vim-matchup',
    event = 'BufWinEnter'
  }

  -- Checking the Starup Time for Neovim
  use {
    'tweekmonster/startuptime.vim'
  }

  -- For Markdown Previews
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview',
    event = "BufWinEnter",
  }

  -- Devicons
  use {
    'kyazdani42/nvim-web-devicons'
  }

  -- Nvim-Tree-Lua
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = "NvimTreeToggle",
    config = "require('dev.tree')"
  }

  -- Snippets
  use {
    'honza/vim-snippets',
    event = "BufWinEnter"
  }
  use {
    'sirver/ultisnips',
    event = "BufWinEnter"
  }
  use {
    'cstrap/flask-snippets'
  }
  use {
    'L3MON4D3/LuaSnip',
  }

  -- CSS Color Preview
  use {
    'norcalli/nvim-colorizer.lua',
    config = "require('colorizer').setup{}",
    event = "BufRead"
  }

  -- Telescope
  use {
    'nvim-lua/plenary.nvim'
  }
  use {
    'nvim-lua/popup.nvim'
  }
  use {
    'nvim-telescope/telescope.nvim',
    config = "require('telescope-config')"
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    after = "telescope.nvim"
  }
  use {
    'nvim-telescope/telescope-packer.nvim',
    -- after = "telescope.nvim",
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    -- after = "telescope.nvim",
  }
  use {
    "nvim-telescope/telescope-arecibo.nvim",
    rocks = {"openssl", "lua-http-parser"},
    -- after = "telescope.nvim",
  }


  -- Lualine
  use {
    'tamton-aquib/staline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    -- config = "require('statline-config')"
  }

  -- Treesitter plugins
  use {
    'windwp/nvim-ts-autotag',
    after = "nvim-treesitter"
  }
  use {
    'p00f/nvim-ts-rainbow',
    after = "nvim-treesitter"
  }

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Git Signs
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup{
	current_line_blame = false,
      }
    end
  }

  -- Appearance--
  -- Indent Guides
  use {"lukas-reineke/indent-blankline.nvim", event = "BufRead", config = "require('appearance.indents')"}

  -- Fancy Notification
  use { 'rcarriga/nvim-notify' }

  -- Themes
  use {
    { 'dracula/vim', as = 'dracula' },
    { "ellisonleao/gruvbox.nvim" },
    { 'rose-pine/neovim', as = 'rose-pine' },
    { 'joshdick/onedark.vim' },
    { 'tiagovla/tokyodark.nvim' },
    { 'sainnhe/everforest' },
    { 'sainnhe/sonokai' },
    { 'sainnhe/gruvbox-material' },
    { "catppuccin/nvim", as = "catppuccin"},
  }

  -- Autoformat
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = "require('lsp.null-ls-config')"
  }

  -- Embedded Terminal
  use {
    'akinsho/toggleterm.nvim',
    config = "require('toggleterm-config')"
  }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function ()
      require('dev.comment-config')
    end,
    event = "BufWinEnter"
  }

  -- Autopairs
  use {
    'windwp/nvim-autopairs',
    wants = "nvim-treesitter",
    module = {
      "nvim-autopairs.completion.cmp",
      "nvim-autopairs"
    },
    config = "require('lsp.autopairs-config')",
    after = "nvim-cmp"
  }

  -- Hopper for Hopping through the Code
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
    event = "BufWinEnter"
  }

  -- Almighty Github Copilot
  --[[ use { 'github/copilot.vim' } ]]


  -- Wakatime: Keeping Track of your Coding Progress
  use {
    'wakatime/vim-wakatime'
  }

  -- FZF: Searching through the files
  use {
    'junegunn/fzf.vim',
    event = "BufWinEnter"
  }

  use {
    'folke/lsp-colors.nvim',
    config = function()
      require('lsp.color-config')
    end,
    event = "BufWinEnter"
  }

  use {
    "folke/trouble.nvim",
    config = "require('lsp.trouble-config')",
    event = "BufWinEnter"
  }

  use {
    'sotte/presenting.vim',
    event = "BufRead"
  }

  -- Code Structure Navigation
  use {
    'stevearc/aerial.nvim',
    config = "require('dev.aerial-config')",
    event = "BufWinEnter",
  }

  -- Zen/Presentation Mode
  use {
    {
      "folke/twilight.nvim",
      config = "require('appearance.zen.twilight-config')",
      event = "BufWinEnter"
    },
    {
      "folke/zen-mode.nvim",
      config = "require('appearance.zen.mode')",
      event = "BufWinEnter"
    },
  }

  -- Firenvim
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }

  use {
    'p00f/cphelper.nvim',
    config = "require('dev.cph')",
    event = "BufWinEnter"
  }

end)
