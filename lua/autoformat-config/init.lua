local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    formatting.stylua,
    formatting.prettier,
    formatting.black.with({
      filetypes = {'python'},
    }),
    formatting.clang_format,
    formatting.dart_format,
    formatting.codespell.with({filetypes = {'markdown'}})
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
      augroup LspFormatting
	autocmd! * <buffer>
	autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
      augroup END
      ]])
    end
  end
})
