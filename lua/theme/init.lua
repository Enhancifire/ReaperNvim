
-- Theming
require('lualine').setup({
  options = {
    theme = 'tokyodark'
  }
})

-- vim.api.nvim_command([[
--     autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
--     autocmd FileType json syntax match Comment +\/\/.\+$+
--     autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
-- ]])

--vim.o.background = 'dark'
-- vim.g.tokyodark_transparent_background = true
vim.cmd([[colorscheme tokyodark]])
