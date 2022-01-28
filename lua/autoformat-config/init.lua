require'format'.setup {
  html = {{cmd = {"prettier -w"}}},
  css = {{cmd = {"prettier -w"}}},
  json = {{cmd = {"prettier -w"}}},
  yaml = {{cmd = {"prettier -w"}}},
  javascript = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  python = {{
    cmd = {
      function(file)
	return string.format('black --quiet %s', file)
      end
    }
  }}
}

vim.cmd('autocmd BufWritePost * FormatWrite')

