local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

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

nkeymap("<C-u>", "<C-u>zz")
nkeymap("<C-d>", "<C-d>zz")

nkeymap("n", "nzzzv")
nkeymap("N", "Nzzzv")
