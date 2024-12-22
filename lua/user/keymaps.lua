local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Set leader
map("n", "<Space>", "<NOP>", opts)

local function nkeymap(key, exec)
	map("n", key, exec, opts)
end

local function vkeymap(key, exec)
	map("v", key, exec, opts)
end

local function ikeymap(key, exec)
	map("i", key, exec, opts)
end

local function xkeymap(key, exec)
	map("x", key, exec, opts)
end

-- remap to ESC
ikeymap("jk", "<ESC>")
ikeymap("kj", "<ESC>")

-- Move using Highlight
vkeymap("J", ":m '>+1<CR>gv=gv")
vkeymap("K", ":m '>-2<CR>gv=gv")

vkeymap("<", "<gv")
vkeymap(">", ">gv")

nkeymap("K", "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>")
nkeymap("gd", ":Telescope lsp_definitions<cr>")
nkeymap("gD", ":lua vim.lsp.buf.declaration()<cr>")
nkeymap("gi", ":Telescope lsp_implementations()<cr>")
nkeymap("gw", ":Telescope lsp_document_symbols<cr>")
nkeymap("gw", ":Telescope lsp_workspace_symbols<cr>")
nkeymap("gr", ":Telescope lsp_references<cr>")
nkeymap("gt", ":Telescope lsp_type_definitions<cr>")

nkeymap("<C-u>", "<C-u>zz")
nkeymap("<C-d>", "<C-d>zz")
-- nkeymap("<C-p>", ":Telescope find_files<CR>")
nkeymap("<C-\\>", ":TroubleToggle<CR>")

-- nkeymap("<A-j>", ":lua require('tmux').move_bottom()<CR>")
-- nkeymap("<A-k>", ":lua require('tmux').move_top()<CR>")
-- nkeymap("<A-h>", ":lua require('tmux').move_left()<CR>")
-- nkeymap("<A-l>", ":lua require('tmux').move_right()<CR>")
vim.keymap.set('n', '<A-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').move_cursor_right)
vim.keymap.set('n', '<A-\\>', require('smart-splits').move_cursor_previous)
-- swapping buffers between windows
vim.keymap.set('n', '<leader>sh', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader>sj', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader>sk', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader>sl', require('smart-splits').swap_buf_right)


nkeymap("n", "nzzzv")
nkeymap("N", "Nzzzv")

xkeymap("<leader>p", "\"_dP")
nkeymap("<leader>y", "\"+y")
vkeymap("<leader>y", "\"+y")
