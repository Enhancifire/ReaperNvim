require("Comment").setup({
  opleader = {
    -- Line-comment Keymap
    line = 'gc',

    -- Block-comment Beymap
    block = 'gb'
  },

  mappings = {
    basic = true,

    extra = true,

    extended = true,
  },

  pre_hook = nil,

  post_hook = nil,

  ignore = nil,
})
