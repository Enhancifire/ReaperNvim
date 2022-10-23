require("mason").setup()
require("mason-lspconfig").setup({
	-- ensure_installed = { "sumneko_lua", "pylsp" },
	automatic_installation = true,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
caps = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("lspconfig")["pyright"].setup({
	capabilities = capabilities,
})

require("lspconfig")["pylsp"].setup({
	capabilities = capabilities,
})

require("lspconfig")["emmet_ls"].setup({
	capabilities = capabilities,
})

require("lspconfig")["sumneko_lua"].setup({
	capabilities = capabilities,
})
