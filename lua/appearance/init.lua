-- Indentation
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    buftype_exclude = {"terminal"},
    filetype_exclude = {
      "dashboard",
      "NvimTree",
      "packer"
    }
}

-- Autoformatting
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
