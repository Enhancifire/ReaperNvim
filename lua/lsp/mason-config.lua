require("neoconf").setup()
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pylsp", "lua_ls" },
})

require("mason-lspconfig").setup_handlers({
	-- Default Handler
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({})
	end,
	["rust_analyzer"] = function()
		require("rust-tools").setup({})
	end,
})
