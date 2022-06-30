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

nkeymap('gs', ":HopLine<CR>")

nkeymap('<C-p>', ':Files<CR>')
nkeymap('<C-g>', ':Rg<CR>')
