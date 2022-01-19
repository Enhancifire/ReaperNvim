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

  -- WhichKey
  use { "folke/which-key.nvim" }

  use '9mm/vim-closer'

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

  -- Intellisense
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'tjdevries/nlua.nvim'
  use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'

  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }

  -- Emmet
  use 'mattn/emmet-vim'

  -- Themes
  use 'joshdick/onedark.vim'
  use 'morhetz/gruvbox'

  -- Nerdtree
  use 'scrooloose/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'

  -- Nvim-Tree-Lua
  use 'kyazdani42/nvim-tree.lua'

  -- Cheat Sheet
  use 'dbeniamine/cheat.sh-vim'

  -- Auto-pair
  use 'windwp/nvim-autopairs'

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
  use 'hrsh7th/nvim-compe'

  -- Airline
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'


  -- Startify
  use { 'mhinz/vim-startify' }

  -- Themes
  use {'dracula/vim', as = 'dracula'}
  use { "ellisonleao/gruvbox.nvim" }



  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { 'windwp/nvim-ts-autotag' }
  use { 'p00f/nvim-ts-rainbow' }
end)
