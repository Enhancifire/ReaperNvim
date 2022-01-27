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
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'onsails/lspkind-nvim',
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  }

  use { 'github/copilot.vim' }
  -- Flutter Development
  use { 'akinsho/flutter-tools.nvim' }

  -- WhichKey
  use { "folke/which-key.nvim" }

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
  use 'kyazdani42/nvim-tree.lua'

  -- Cheat Sheet
  use 'dbeniamine/cheat.sh-vim'

  -- Auto-pair
  -- use 'jiangmiao/auto-pairs'

  -- Snippets
  use 'honza/vim-snippets'
  use 'sirver/ultisnips'

  -- CSS Color Preview
  use 'ap/vim-css-color'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzf-native.nvim'

  -- Themes
  use {'dracula/vim', as = 'dracula'}
  use { "ellisonleao/gruvbox.nvim" }
  use 'joshdick/onedark.vim'
  use 'tiagovla/tokyodark.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Treesitter plugins
  use { 'windwp/nvim-ts-autotag' }
  use { 'p00f/nvim-ts-rainbow' }

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
  use "lukas-reineke/indent-blankline.nvim"
  -- Autoformat
  use { 'lukas-reineke/format.nvim' }

  -- Embedded Terminal
  use { 'akinsho/toggleterm.nvim' }

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

  use { 'windwp/nvim-autopairs' }


end)
