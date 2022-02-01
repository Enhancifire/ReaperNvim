local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
	execute 'packadd packer.nvim'
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Intellisense
  use {
    { 'tami5/lspsaga.nvim', branch = 'nvim6.0' },
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'nvim-lua/completion-nvim',
    'tjdevries/nlua.nvim',
    {'hrsh7th/nvim-cmp', event = "InsertEnter", config = "require('lsp/cmp-config')"},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer', after = "nvim-cmp"},
    {'hrsh7th/cmp-path', after = "nvim-cmp"},
    {'hrsh7th/cmp-cmdline', after = "nvim-cmp"},
    {'hrsh7th/cmp-vsnip', after = "nvim-cmp"},
    {'hrsh7th/vim-vsnip', after = "nvim-cmp"},
    'onsails/lspkind-nvim',
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', event="BufWinEnter", config = "require('treesitter-config')"}

  -- WhichKey
  use { "folke/which-key.nvim" }

  -- Flutter Development
  use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim', after = "telescope.nvim", config = "require('flutter')"}


  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  use {'andymass/vim-matchup', event = 'VimEnter'}

  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  use 'tweekmonster/startuptime.vim'

  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  use {'tjdevries/colorbuddy.vim'}

  -- Devicons
  use 'kyazdani42/nvim-web-devicons'

  -- Nvim-Tree-Lua
  use {'kyazdani42/nvim-tree.lua', cmd = "NvimTreeToggle", config = "require('nvim-tree-config')"}

  -- Cheat Sheet
  use 'dbeniamine/cheat.sh-vim'

  -- Snippets
  use {'honza/vim-snippets', event = "BufWinEnter"}
  use {'sirver/ultisnips', event = "BufWinEnter"}

  -- CSS Color Preview
  use { 'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead" }

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use {'nvim-telescope/telescope.nvim', config = "require('telescope-config')"}
  use {'nvim-telescope/telescope-fzf-native.nvim', after = "telescope.nvim"}
  use { 'nvim-telescope/telescope-packer.nvim', after = "telescope.nvim", config = "require('telescope').load_extension 'packer'" }
  use { "nvim-telescope/telescope-file-browser.nvim", after = "telescope.nvim", config = "require('telescope').load_extension 'file_browser'" }
  use {
    "nvim-telescope/telescope-arecibo.nvim",
    rocks = {"openssl", "lua-http-parser"},
    after = "telescope.nvim",
    config = "require('telescope').load_extension 'arecibo'",
  }

  -- Themes
  use {'dracula/vim', as = 'dracula'}
  use { "ellisonleao/gruvbox.nvim" }
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use 'joshdick/onedark.vim'
  use 'tiagovla/tokyodark.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = "require('statline.init')"
  }

  -- Treesitter plugins
  use { 'windwp/nvim-ts-autotag', after = "nvim-treesitter" }
  use { 'p00f/nvim-ts-rainbow', after = "nvim-treesitter" }

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
  use {"lukas-reineke/indent-blankline.nvim", event = "BufRead", config = "require('indentation')"}

  -- Autoformat
  use { 'jose-elias-alvarez/null-ls.nvim', cmd = "Format", config = "require('autoformat-config')" }

  -- Embedded Terminal
  use { 'akinsho/toggleterm.nvim', config = "require('toggleterm-config')"}

  -- Comments
  use { 'terrortylor/nvim-comment' ,
  config = function ()
    require('nvim_comment').setup({
      comment_empty = false,
      line_mapping = "<leader>cl",
      operator_mapping = "<leader>cr"
    })
    end
  }

  -- Autopairs
  use { 'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp" }

-- For managing projects
  use { 'ahmedkhalf/project.nvim', after = "telescope.nvim", config = "require('project-config')" }

  use {"ellisonleao/glow.nvim"}

  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  use { 'github/copilot.vim' }

end)
