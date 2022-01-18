local opts = { noremap = true, silent = true }
-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opts)

vim.g.mapleader = ' '

-- remap to ESC
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', opts)
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', opts)

-- Navigate Windows
vim.api.nvim_set_keymap('n', '<Leader>wh', ':wincmd h<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>wj', ':wincmd j<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>wk', ':wincmd k<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>wl', ':wincmd l<CR>', opts)

-- Split Windows
vim.api.nvim_set_keymap('n', '<Leader>ws', ':sp <CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>wv', ':vs <CR>', opts)

-- Move using Highlight
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', opts)
vim.api.nvim_set_keymap('v', 'K', ':m \'>-2<CR>gv=gv', opts)

vim.api.nvim_set_keymap('n', '<Leader>', ":WhichKey <Space> <CR>", opts)

-- Close Window
vim.api.nvim_set_keymap('n', '<Leader>wc', ':close <CR>', opts)

vim.api.nvim_set_keymap('n', '<Leader>op', ':Vex <CR>', opts)

local tsb = require('telescope.builtin')

