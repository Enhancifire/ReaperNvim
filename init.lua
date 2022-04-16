-- Highest priority - Plugins
require('plugins')

-- Keymaps
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

require('markdown-view')

require('wiki')
require('statline-config')

-- vim.g.tokyodark_transparent_background = false
vim.cmd([[colorscheme tokyodark]])
