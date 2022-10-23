require("flutter-tools").setup {
	debugger = {
		enabled = true,
		run_via_dap = true,
	}
}

require('telescope').load_extension('flutter')
