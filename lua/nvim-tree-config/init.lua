vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_respect_buf_cwd = 1

require'nvim-tree'.setup {
  update_focused_file = {
    enable = true,
  },
  auto_open = 1,
  auto_close = 1,
  open_on_setup = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  hijack_netrw = true,
  disable_newrw = true,
  view = {
    width = 30,
    height = 3,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
}
vim.cmd([[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
