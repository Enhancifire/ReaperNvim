require('plugins')
require('settings')
require('airline')
require('keymaps')
require('lsp-config')
require('telescope-config')
require('start-vim')

vim.api.nvim_command([[
    autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
    autocmd FileType json syntax match Comment +\/\/.\+$+
]])

vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

vim.cmd([[
fun! TrimWhiteSpace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun


augroup FAIZ
  autocmd!
  autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
]])