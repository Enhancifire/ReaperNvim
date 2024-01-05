-- Flutter Development
return {
	"akinsho/flutter-tools.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	config = function() require('dev.flutter') end,
}
