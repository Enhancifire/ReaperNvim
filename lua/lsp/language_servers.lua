local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not lspconfig.emmet_ls then
  configs.emmet_ls = {
    default_config = {
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css', 'blade'};
      root_dir = function(fname)
	return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end
lspconfig.emmet_ls.setup{ capabilities = capabilities; }

lsp_installer.on_server_ready(function(server)
  local opts = {}
  if server.name == "sumneko_lua" then
    opts = {
      settings = {
	Lua = {
	  diagnostics = {
	    globals = { 'vim', 'use' }
	  },
	}
      }
    }
  end

  if server.name == "emmet_ls" then
    default_config = {
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css', 'blade'};
      root_dir = function(fname)
	return vim.loop.cwd()
      end;
      settings = {};
    };

  end

  server:setup(opts)
end)
