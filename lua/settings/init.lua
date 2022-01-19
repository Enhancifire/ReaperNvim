

-- syntax enable                           " Enables syntax highlighing
vim.o.hidden = true
vim.o.encoding= 'utf-8'
vim.o.pumheight= 10
vim.o.fileencoding= 'utf-8'
vim.o.ruler = true
vim.o.cmdheight=2
-- vim.o.completeopt = 'menuone, noinsert, noselect'

vim.o.mouse= 'a'
vim.wo.wrap = false
vim.o.backup = false
vim.o.errorbells = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.wo.conceallevel=0
vim.bo.tabstop=4
vim.bo.softtabstop=4
vim.bo.shiftwidth=2
vim.o.shiftwidth=2
vim.o.smarttab = true
vim.bo.expandtab = true
vim.bo.smartindent = true
vim.bo.autoindent = true
vim.o.autoindent = true
vim.o.laststatus=0
vim.wo.cursorline = true
vim.o.showtabline=2
vim.o.updatetime=300
vim.o.timeoutlen=500
vim.o.clipboard= 'unnamedplus'
vim.wo.relativenumber = true
vim.wo.nu = true
vim.o.exrc = true
vim.o.errorbells = false
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff=8
vim.wo.scrolloff=8
vim.wo.signcolumn='yes'


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


vim.api.nvim_command([[
	filetype plugin on
	filetype indent on
	syntax on
]])
