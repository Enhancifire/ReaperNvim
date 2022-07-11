require('staline').setup {
  defaults = {
    left_separator = "",
    right_separator = "",
    -- cool_symbol = " ", -- Change this to override defult OS icon.
    full_path = false,
    mod_symbol = "  ",
    lsp_client_symbol = " ",
    line_column = "[%l/%L] 並%p%% ", -- `:h stl` to see all flags.
    fg = "#000000", -- Foreground text color.
    bg = "none", -- Default background is transparent.
    inactive_color = "#303030",
    inactive_bgcolor = "none",
    true_colors = true, -- true lsp colors.
    font_active = "none", -- "bold", "italic", "bold,italic", etc
    branch_symbol = " "
  },

  mode_colors = {n = "#FE6847", i = "#F5D6BA", c = "#ACC3A6", v = "#F6C177", V = "#C179B9"},
  mode_icons = {
    n = " NORMAL",
    i = " INSERT",
    c = " COMMAND",
    v = " VISUAL",
    V = " VISUAL",
  },

  sections = {
    left = {'-mode', 'left_sep_double', ' ', 'branch'},
    mid = {'file_name'},
    right = {'right_sep_double', '-line_column'}
  },

  special_table = {
    NvimTree = {'NvimTree', ' '},
    packer = {'Packer', ' '} -- etc
  },

  lsp_symbols = {Error = " ", Info = " ", Warn = " ", Hint = ""}
}

require('stabline').setup{
  style = "bar",
  bg = "none",
  fg = "none"
}
