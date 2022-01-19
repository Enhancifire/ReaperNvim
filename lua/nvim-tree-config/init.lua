vim.g.nvim_tree_indent_markers = 1

require'nvim-tree'.setup {
  auto_open = 1,
  auto_close = 1,
  git = {
    enable = true,
    ignore = true,
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
  view = {
    width = 25,
  },
  hijack_netrw = true,
  disable_newrw = true,
}
