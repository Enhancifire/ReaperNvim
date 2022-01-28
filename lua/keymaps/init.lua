local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
-- Set leader
map('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '

-- remap to ESC
map('i', 'jk', '<ESC>', opts)
map('i', 'kj', '<ESC>', opts)


-- Move using Highlight
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'>-2<CR>gv=gv', opts)


map('n', '<Leader>fr', '<CMD>Telescope live_grep <CR>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)


map('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)

local function nkeymap(key, exec)
  map('n', key, exec, opts)
end

nkeymap('gd', ':Telescope lsp_definitions<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':Telescope lsp_implementations()<cr>')
nkeymap('gw', ':Telescope lsp_document_symbols<cr>')
nkeymap('gw', ':Telescope lsp_workspace_symbols<cr>')
nkeymap('gr', ':Telescope lsp_references<cr>')
nkeymap('gt', ':Telescope lsp_type_definitions<cr>')
--nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')

-- place this in one of your configuration file(s)
-- vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
-- vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

nkeymap('gs', ":HopLine<CR>")
