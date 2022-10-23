local wk = require("which-key")
local home = os.getenv("HOME")

local wopts = {
	prefix = "<leader>",
	silent = true,
	noremap = true,
}

local dotdir = function() end

local vopts = {
	prefix = "<leader>",
	mode = "v",
	silent = true,
	noremap = true,
}

local dapui = require("dapui")
local toggle_dap_ui = function()
	dapui.toggle()
end

local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
	local float = Terminal:new({ direction = "float" })
	return float:toggle()
end

local toggle_lazygit = function()
	local lazygit = Terminal:new({ direction = "float", cmd = "lazygit" })
	return lazygit:toggle()
end

local pythonTerm = function()
	local pyt = Terminal:new({ direction = "tab", cmd = "bpython", size = 30 })
	return pyt:toggle()
end

local btop = function()
	local ht = Terminal:new({ direction = "float", cmd = "btop --utf-force" })
	return ht:toggle()
end

local music = function()
	local ncp = Terminal:new({ direction = "float", cmd = "ncmpcpp" })
	return ncp:toggle()
end

local transp = function()
	if vim.g.tokyodark_transparent_background == true then
		vim.g.tokyodark_transparent_background = false
	else
		vim.g.tokyodark_transparent_background = true
	end
end

local mappings = {
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
		a = { "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", "Code Actions" },
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
		f = { ":Files<CR>", "Find Files" },
		g = { ":Rg<CR>", "Live Grep" },
	},

	-- Git
	g = {
		name = "Git",
		b = { "<cmd>lua require('telescope.builtin').git_branches()<cr>", "Branches" },
		g = { toggle_lazygit, "Open Lazygit" },
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
		m = { "<cmd>lua require('telescope.builtin').man_pages()<CR>", "Man Pages" },
		r = {
			name = "Reload",
			r = { ":so C:\\Users\\Faiz\\AppData\\Local\\nvim\\init.lua <CR>", "Source configuration" },
			R = {
				":so C:\\Users\\Faiz\\AppData\\Local\\nvim\\init.lua <CR> :PackerSync <CR>",
				"Source and install plugins",
			},
		},
		p = {
			name = "Configuration",
			s = { ":PackerSync <CR>", "Packer Sync" },
			p = { dotdir, "Open Personal Configuration" },
		},
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

	-- NvimTree
	n = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },

	-- Opening Various Stuff
	o = {
		name = "open",
		b = { ":enew<CR>", "Open new empty buffer" },
		w = { "<Plug>VimwikiIndex<CR>", "Open Wiki" },
	},

	-- Project Management
	p = {
		name = "Project",
		p = { ":Telescope projects<CR>", "Switch Projects" },
	},

	-- Quit
	q = {
		name = "Quit",
		q = { ":q<cr>", "Quit" },
		Q = { ":wq<cr>", "Save and Quit" },
	},

	-- Reload
	r = {
		name = "Reload",
		s = { "<cmd>source ~/.config/nvim/lua/snippets/init.lua<CR>", "Reload Snippets" },
	},

	-- Toggle
	t = {
		name = "Toggle",
		m = { music, "Toggle Music Player" },
		t = { ":ToggleTerm<CR>", "Open Terminal" },
		f = { toggle_float, "Floating Terminal" },
		s = { btop, "Open System Monitor" },
		o = { transp, "Toggle Opacity" },
		p = { pythonTerm, "Open Python Terminal" },
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

	-- Zen Mode
	z = {
		name = "Focus Mode",
		z = { ":ZenMode<CR>", "Zen Mode" },
		t = { ":Twilight<CR>", "Toggle Twilight" },
	},
}

wk.register(mappings, wopts)
wk.register({
	d = {
		name = "Debug",
		e = { "<Cmd>lua require('dapui').eval()<CR>", "Evaluate Expression" },
	},
}, vopts)
