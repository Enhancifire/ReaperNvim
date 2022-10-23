local null_ls = require("null-ls")
local masonnull = require("mason-null-ls")
masonnull.setup({
	ensure_installed = { "stylua", "black" },
})

local formatting = null_ls.builtins.formatting

masonnull.setup_handlers({
	stylua = function()
		null_ls.register(formatting.stylua)
	end,
	black = function()
		null_ls.register(formatting.black)
	end,
	clang_format = function()
		null_ls.register(formatting.clang_format)
	end,
	codespell = function()
		null_ls.register(formatting.codespell)
	end,
	prettier = function()
		null_ls.register(formatting.prettier)
	end,
})

null_ls.setup({
	sources = {
		formatting.dart_format,
	},
})
