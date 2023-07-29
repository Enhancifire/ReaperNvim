return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local lualine = require('lualine')
		lualine.setup {
			options = {
				icons_enabled = true,
				theme = 'catppuccin',
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'filename' },
				lualine_c = {},
				lualine_x = {
					{
						'diagnostics',
						source = { 'nvim_diagnostics' },
						symbols = {
							error = ' ',
							warn = ' ',
							info = ' ',
							hint = ' '
						}
					},
					'encoding',
					'filetype'
				},
				lualine_y = { 'progress' },
				lualine_z = { 'branch', 'diff' }
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						'filename',
						file_status = true,
						path = 1
					},
				},
				lualine_x = { 'location' },
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end

}
