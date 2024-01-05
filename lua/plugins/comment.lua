return {
	"numToStr/Comment.nvim",
	opts = {
		opleader = {
			-- Line-comment Keymap
			line = "gc",
			-- Block-comment Beymap
			block = "gb",
		},
		mappings = {
			basic = true,
			extra = true,
		},
		pre_hook = nil,
		post_hook = nil,
		ignore = nil,
	},
}
