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
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Emmet
  use 'mattn/emmet-vim'

  -- Themes
  use 'joshdick/onedark.vim'
  use 'morhetz/gruvbox'

  -- Nerdtree
  use 'scrooloose/nerdtree'

  -- Cheat Sheet
  use 'dbeniamine/cheat.sh-vim'

  -- Auto-pair
  use 'jiangmiao/auto-pairs'

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
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Startify
  use { 'mhinz/vim-startify' }

  -- Themes
  use {'dracula/vim', as = 'dracula'}
  use { "ellisonleao/gruvbox.nvim" }

  -- WhichKey
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
end)
