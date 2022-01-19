require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "cpp",
    "c",
    "toml",
    "fish",
    "python",
    "php",
    "html",
    "css",
    "json",
    "yaml",
    "scss",
    "dart",
    "http",
    "javascript",
    "lua",
    "typescript",
    "markdown",
    "latex",

  },
  rainbox = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

