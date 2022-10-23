-- Highest priority - Plugins ---------------------------
require('user.plugins')

-- User Settings ----------------------------------------
require('user.keymaps')
require('user.whichkey')
require('user.settings')
require('user.hydra-config')
require('user.autofire')

-- Intellisense -----------------------------------------
require('lsp')

-- Appearance -------------------------------------------
require('appearance')

-- Test Functions ---------------------------------------
require('functions')

-- System Functions -------------------------------------
require('system')

-- Notifications ----------------------------------------
require("notify").setup({
  background_color = "#54577C"
})

vim.notify = require('notify')

