-- Setting the statusline and bufferline
-- require('appearance.staline-config')

require("appearance.galaxyconf")

-- Theme Specific Configurations
require("appearance.theme.rose")
require("appearance.theme.tokyo")
require("appearance.theme.catpu")

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd("colorscheme tokyodark")
