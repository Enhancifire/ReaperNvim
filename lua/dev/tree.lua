require("nvim-tree").setup({
	respect_buf_cwd = false,
	update_focused_file = {
		enable = true,
	},
	renderer = {
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				item = "│ ",
				none = "  ",
			},
		},
	},
	open_on_setup = true,
	git = {
		enable = true,
		ignore = false,
	},
	diagnostics = {
		enable = false,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	hijack_netrw = true,
	disable_netrw = true,
	view = {
		adaptive_size = true,
		width = 30,
		hide_root_folder = false,
		side = "left",
		mappings = {
			custom_only = false,
			list = {},
		},
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		float = {
			enable = false,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 30,
				height = 30,
				row = 1,
				col = 1,
			},
		},
	},
})
vim.cmd([[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
