require('nvim-autopairs').setup({
	disable_filetype = { "TelescopePrompt", "vim", "dashboard" }
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
	'confirm_done',
	cmp_autopairs.on_confirm_done({
		html = {
			["%"] = {
				kind = {
					cmp.lsp.CompletionItemKind.Function,
					cmp.lsp.CompletionItemKind.Method
				}
			}
		}
	})
)
