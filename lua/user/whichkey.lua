local wk = require("which-key")
local legendary = require("legendary")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local wopts = {
	prefix = "<leader>",
	silent = true,
	noremap = true,
}

local vopts = {
	prefix = "<leader>",
	mode = "v",
	silent = true,
	noremap = true,
}

local toggle_dap_ui = function()
	local dapui = require("dapui")
	dapui.toggle()
end

local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
	local float = Terminal:new({ direction = "float" })
	return float:toggle()
end

local toggleInlayHint = function()
	if vim.lsp.inlay_hint then
		vim.lsp.inlay_hint(0, nil)
	end
end

local nmaps = {
	---- Buffers
	b = {
		name = "Buffer",
		k = { ":bdelete<cr>", "Kill Buffer" },
		l = { "<C-^>", "Last Buffer" },
		b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "List Buffers" },
	},

	-- Code Actions
	c = {
		name = "Code",
		s = { "<cmd>lua require('telescope.builtin').treesitter()<cr>", "Symbols" },
		r = { ":lua vim.lsp.buf.rename()<CR>", "Rename Varialbe" },
		o = { ":AerialToggle<CR>", "Toggle Code Outline" },
		f = { ":lua vim.lsp.buf.format()<CR>", "Format Code" },
	},

	-- Debug
	d = {
		name = "Debug",
		t = { toggle_dap_ui, "Toggle Debugger" },
		b = { ":DapToggleBreakpoint<CR>", "Toggle Breakpoint" },
		c = { ":DapContinue<CR>", "Continue/Run" },
		r = { ":DapToggleRepl<CR>", "Toggle Repl" },
		i = { ":DapStepInto<CR>", "Step Into" },
		o = { ":DapStepOut<CR>", "Step Out" },
		O = { ":DapStepOver<CR>", "Step Over" },
	},

	-- Files
	f = {
		name = "Files",
	},

	-- Git
	g = {
		name = "Git",
		b = { "<cmd>lua require('telescope.builtin').git_branches()<cr>", "Branches" },
		g = { ":LazyGit<cr>", "Open Lazygit" },
		s = { "<cmd>lua require('telescope.builtin').git_status()<cr>", "Status" },
		c = { "<cmd>lua require('telescope.builtin').git_commits()<cr>", "Commits" },
		t = { "<cmd>lua require('telescope.builtin').git_stash()<cr>", "Stash" },
		f = { "<cmd>lua require('telescope.builtin').git_files()<cr>", "Files" },
	},

	-- Help
	h = {
		name = "Help",
		c = { "<cmd>lua require('telescope.builtin').commands()<CR>", "Commands" },
		h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help Tags" },
		t = { ":Telescope<CR>", "Telescope" },
		l = { ":Lazy<CR>", "Open Lazy" },
		m = { "<cmd>lua require('telescope.builtin').man_pages()<CR>", "Man Pages" },
	},

	-- LSP
	l = {
		name = "LSP",
		i = { ":LspInfo<cr>", "Connected Language Servers" },
		A = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add workspace folder" },
		R = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove workspace folder" },
		l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "List workspace folder" },
		D = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type definition" },
		r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
		a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code actions" },
		e = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show line diagnostics" },
		q = { "<cmd>lua vim.lsp.diagnostic.setloclist()<CR>", "Show loclist" },
	},

	m = { mark.add_file, "Add Mark" },

	-- NvimTree
	n = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },

	-- Opening Various Stuff
	o = {
		name = "open",
		b = { ":enew<CR>", "Open new empty buffer" },
		w = { "<Plug>VimwikiIndex<CR>", "Open Wiki" },
	},

	-- -- Project Management
	-- p = {
	-- 	name = "Project",
	-- 	p = { ":Telescope projects<CR>", "Switch Projects" },
	-- },

	-- Quit
	q = {
		name = "Quit",
		q = { ":q<cr>", "Quit" },
		Q = { ":wq<cr>", "Save and Quit" },
	},

	-- Toggle
	t = {
		name = "Toggle",
		t = { ":ToggleTerm<CR>", "Open Terminal" },
		h = { toggleInlayHint, "Toggle Inlay Hint" },
	},

	---- Windows
	w = {
		name = "window",
		o = { "<C-w>o", "Maximize pane" },
		j = { ":wincmd j<CR>", "Go to botton pane" },
		k = { ":wincmd k<CR>", "Go to upper pane" },
		h = { ":wincmd h<CR>", "Go to left pane" },
		l = { ":wincmd l<CR>", "Go to right pane" },
		c = { ":close <CR>", "Close Window" },
		s = { ":sp <CR>", "Split Horizontally" },
		v = { ":vs <CR>", "Split Vertically" },
	},
}

local vmaps = {
	d = {
		name = "Debug",
		e = { "<Cmd>lua require('dapui').eval()<CR>", "Evaluate Expression" },
	},
}

-- legendary.setup({
-- 	select_prompt = "Commands",
-- 	which_key = {
-- 		auto_register = true,
-- 	},
-- })

wk.register(nmaps, wopts)
wk.register(vmaps, vopts)
