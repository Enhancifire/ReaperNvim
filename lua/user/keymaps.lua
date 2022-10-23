local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
-- Set leader
map("n", "<Space>", "<NOP>", opts)
vim.g.mapleader = " "

local function nkeymap(key, exec)
	map("n", key, exec, opts)
end

local function vkeymap(key, exec)
	map("v", key, exec, opts)
end

local function ikeymap(key, exec)
	map("i", key, exec, opts)
end

-- remap to ESC
map("i", "jk", "<ESC>", opts)
map("i", "kj", "<ESC>", opts)

-- Move using Highlight
vkeymap("J", ":m '>+1<CR>gv=gv")
vkeymap("K", ":m '>-2<CR>gv=gv")

nkeymap("<Leader>fr", "<CMD>Telescope live_grep <CR>")

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

nkeymap("gs", ":HopLine<CR>")

nkeymap("<C-p>", ":Files<CR>")
nkeymap("<C-;>", ":TroubleToggle<CR>")
nkeymap("<C-.>", ":Telescope commands<CR>")
nkeymap("<C-g>", ":Rg<CR>")
