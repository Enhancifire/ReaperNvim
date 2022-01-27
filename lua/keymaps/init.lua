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

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
--nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')

