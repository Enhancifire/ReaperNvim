vim.g.completeopt = "menu, menuone, noselect, noinsert"

local cmp = require'cmp'
local lspkind = require'lspkind'
local luasnip = require('luasnip')
local ls = require('luasnip')

local types = require('luasnip.util.types')

-- Luasnip Section
luasnip.config.set_config {
  history = true,
  updateevents = "TextChanged, TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
	virt_text = { { " Current Choice", "GruvboxBlue" } },
      },
    },
    [types.insertNode] = {
      active = {
	virt_text = {{"●", ""}}
      }
    }
  },
}

require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_lua').load({ paths = "~/.config/nvim/snippets/" })

vim.keymap.set({ "i", "s" }, "<C-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

vim.keymap.set({ "i", "s" }, "<C-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end

end)

vim.keymap.set({ "i", "s" }, "<C-u>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

-- Cmp Section
lspkind.init()

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<CR>'] = cmp.mapping.confirm({select = false}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
	cmp.select_next_item()
      end
    end, { "i", "s" }),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
	cmp.select_prev_item()
      end
    end),
  },
  sources = cmp.config.sources({
    { name = "nvim_lua" },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'copilot' },
    { name = "path" },
    { name = 'cmp_tabnine', max_item_count = 5},
    { name = 'buffer', keyword_length = 5},
  }),

  formatting = {
    format = lspkind.cmp_format {
      with_text = false,
      menu = {
	buffer = "[BUF]",
	copilot = "[COP]",
	nvim_lsp = "[LSP]",
	luasnip = "[SNIP]",
	nvim_lua = "[API]",
	path = "[PATH]",
	cmp_tabnine = "[TN]"
      }
    }
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  }
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['sumneko_lua'].setup {
  capabilities = capabilities
}
