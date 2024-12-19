local wk = require("which-key")
local legendary = require("legendary")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")


local nmaps = {
	---- Buffers
	{ "<leader>b",  group = "Buffer" },
	{ "<leader>bk", ":bdelete<cr>",                                           desc = "Kill Buffer" },
	{ "<leader>bl", "<C-^>",                                                  desc = "Last Buffer" },
	{ "<leader>bb", "<cmd>lua require('telescope.builtin').buffers()<cr>",    desc = "List Buffers" },

	-- Code Actions
	{ "<leader>c",  group = "Code" },
	{ "<leader>cs", "<cmd>lua require('telescope.builtin').treesitter()<cr>", desc = "Symbols" },
	{ "<leader>cr", ":lua vim.lsp.buf.rename()<CR>",                          desc = "Rename Variable" },
	{ "<leader>co", ":AerialToggle<CR>",                                      desc = "Toggle Code Outline" },
	{ "<leader>cf", ":lua vim.lsp.buf.format()<CR>",                          desc = "Format Code" },

	-- -- Debug
	-- d = {
	-- 	name = "Debug",
	-- 	t = { toggle_dap_ui, "Toggle Debugger" },
	-- 	b = { ":DapToggleBreakpoint<CR>", "Toggle Breakpoint" },
	-- 	c = { ":DapContinue<CR>", "Continue/Run" },
	-- 	r = { ":DapToggleRepl<CR>", "Toggle Repl" },
	-- 	i = { ":DapStepInto<CR>", "Step Into" },
	-- 	o = { ":DapStepOut<CR>", "Step Out" },
	-- 	O = { ":DapStepOver<CR>", "Step Over" },
	-- },

	-- Files
	{ "<leader>f",  group = "Files" },
	{
		"<leader>ff",
		function()
			local builtin = require("telescope.builtin")

			builtin.find_files()
		end,
		desc = "Find Files"
	},
	{
		"<leader>fg",
		function()
			local builtin = require("telescope.builtin")

			builtin.live_grep()
		end,
		desc = "Grep Files"
	},

	-- Git
	{ "<leader>g",  group = "Git" },
	{ "<leader>gb", "<cmd>lua require('telescope.builtin').git_branches()<cr>",              desc = "Branches" },
	{ "<leader>gg", ":LazyGit<cr>",                                                          desc = "Open Lazygit" },
	{ "<leader>gs", "<cmd>lua require('telescope.builtin').git_status()<cr>",                desc = "Status" },
	{ "<leader>gc", "<cmd>lua require('telescope.builtin').git_commits()<cr>",               desc = "Commits" },
	{ "<leader>gt", "<cmd>lua require('telescope.builtin').git_stash()<cr>",                 desc = "Stash" },
	{ "<leader>gf", "<cmd>lua require('telescope.builtin').git_files()<cr>",                 desc = "Files" },

	-- Help
	{ "<leader>h",  group = "Help" },
	{ "<leader>hc", "<cmd>lua require('telescope.builtin').commands()<CR>",                  desc = "Commands" },
	{ "<leader>hh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",                 desc = "Help Tags" },
	{ "<leader>ht", ":Telescope<CR>",                                                        desc = "Telescope" },
	{ "<leader>hl", ":Lazy<CR>",                                                             desc = "Open Lazy" },
	{ "<leader>hm", "<cmd>lua require('telescope.builtin').man_pages()<CR>",                 desc = "Man Pages" },

	-- LSP
	{ "<leader>l",  group = "LSP" },
	{ "<leader>li", ":LspInfo<cr>",                                                          desc = "Connected Language Servers" },
	{ "<leader>lA", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",                       desc = "Add workspace folder", },
	{ "<leader>lR", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",                    desc = "Remove workspace folder", },
	{ "<leader>ll", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", desc = "List workspace folder", },
	{ "<leader>lD", "<cmd>lua vim.lsp.buf.type_definition()<CR>",                            desc = "Type definition", },
	{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>",                                     desc = "Rename", },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>",                                desc = "Code actions", },
	{ "<leader>le", "<cmd>lua vim.diagnostic.open_float()<CR>",                              desc = "Show line diagnostics", },
	{ "<leader>lq", "<cmd>lua vim.lsp.diagnostic.setloclist()<CR>",                          desc = "Show loclist", },

	{ "<leader>m",  function() mark.add_file() end,                                          desc = "Add Mark", },

	-- NvimTree
	{ "<leader>n",  ":Neotree toggle<CR>",                                                   desc = "Toggle Neo-Tree", },

	-- Obsidian
	{ "<leader>o",  group = "Obsidian",                                                      icon = "" },
	{ "<leader>on", ":ObsidianNew<CR>",                                                      desc = "Create new obsidian note", },
	{ "<leader>os", ":ObsidianSearch<CR>",                                                   desc = "Search Obsidian Notes", },
	{ "<leader>oo", ":ObsidianOpen<CR>",                                                     desc = "Open in Obsidian", },
	{ "<leader>ot", ":ObsidianTOC<CR>",                                                      desc = "Table of Contents", },

	-- -- Project Management
	-- p = {
	-- 	name = "Project",
	-- 	p = { ":Telescope projects<CR>", "Switch Projects" },
	-- },

	-- Quit
	{ "<leader>q",  group = "Quit" },
	{ "<leader>qq", ":q<cr>",                                                                desc = "Quit", },
	{ "<leader>qQ", ":wq<cr>",                                                               desc = "Save and Quit", },

	-- Toggle
	{ "<leader>t",  group = "Toggle" },
	{ "<leader>tt", ":ToggleTerm<CR>",                                                       desc = "Open Terminal", },
	{
		"<leader>th",
		function()
			if vim.lsp.inlay_hint then
				vim.lsp.inlay_hint(0, nil)
			end
		end,
		desc = "Toggle Inlay Hint",
	},

	---- Windows
	{ "<leader>w",  group = "Window" },
	{ "<leader>wo", "<C-w>o",        desc = "Maximize pane", },
	{ "<leader>wj", ":wincmd j<CR>", desc = "Go to botton pane", },
	{ "<leader>wk", ":wincmd k<CR>", desc = "Go to upper pane", },
	{ "<leader>wh", ":wincmd h<CR>", desc = "Go to left pane", },
	{ "<leader>wl", ":wincmd l<CR>", desc = "Go to right pane", },
	{ "<leader>wc", ":close <CR>",   desc = "Close Window", },
	{ "<leader>ws", ":sp <CR>",      desc = "Split Horizontally", },
	{ "<leader>wv", ":vs <CR>",      desc = "Split Vertically", },
}

local vmaps = {

	{
		mode = { "v" },
		{
			"<leader>de",
			"<Cmd>lua require('dapui').eval()<CR>",
			desc = "Evaluate Expression"
		},
	}
}

-- legendary.setup({
-- 	select_prompt = "Commands",
-- 	which_key = {
-- 		auto_register = true,
-- 	},
-- })

wk.add(nmaps)
wk.add(vmaps)
