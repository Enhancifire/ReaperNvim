require('mason').setup()
-- require('lspconfig').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "sumneko_lua", "pylsp" },
	automatic_installation = true,
})
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

