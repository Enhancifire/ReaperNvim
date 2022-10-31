require('beacon').setup({
	enable = true,
	size = 40,
	fade = true,
	minimal_jump = 10,
	show_jumps = true,
	focus_gained = false,
	shrink = true,
	timeout = 500,
	ignore_buffers = {},
	ignore_filetypes = {},
})

vim.cmd([[
    highlight Beacon guibg=#9C0D38 ctermbg=20
]])
