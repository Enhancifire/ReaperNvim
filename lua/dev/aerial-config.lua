require("aerial").setup({
	backends = { "treesitter", "lsp", "markdown" },
	close_automatic_events = {},
	default_direction = "prefer_left",
	highlight_mode = "split_width",
	highlight_on_hover = false,
	attach_mode = "window",

	ignore = {
		filetypes = {
			"dashboard",
			"vim",
		},
	},

	link_folds_to_tree = true,

	manage_folds = true,

	max_width = { 40, 0.2 },

	nerd_font = "auto",
})
