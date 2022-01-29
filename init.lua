-- Highest priority - Plugins
require('plugins')

-- Basic keymaps
require('keymaps')
require('whichkey-conf')

-- Necessary settings
require('settings')

-- Dashboard
require('dashboard-config')

-- Language servers
require('lsp/diagnostic_signs')
require('lsp/language_servers')


-- Miscellanous plugins
require('neovide-config')

vim.cmd([[colorscheme tokyodark]])
