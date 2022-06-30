vim.cmd([[
fun! TrimWhiteSpace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
]])

vim.api.nvim_command([[
	filetype plugin on
	filetype indent on
	syntax on
]])

local pregroup = vim.api.nvim_create_augroup("PreWriteSteps", {clear = true})

vim.api.nvim_create_autocmd("BufWritePre", {
  command = "call TrimWhiteSpace()",
  group = pregroup,
})

