require("flutter-tools").setup({
	debugger = {
		enabled = true,
		run_via_dap = true,
	},
	lsp = {
		color = { -- show the derived colours for dart variables
			enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
			background = false, -- highlight the background
			foreground = true, -- highlight the foreground
			virtual_text = true, -- show the highlight using virtual text
			virtual_text_str = "■", -- the virtual text character to highlight
		},
	},
})

require("telescope").load_extension("flutter")
