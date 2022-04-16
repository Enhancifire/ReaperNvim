local wk = require('which-key')

local wopts = {
  prefix = '<leader>',
  silent = true,
  noremap = true
}

local vopts = {
  prefix = "<leader>",
  mode = "v",
  silent = true,
  noremap = true
}

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function ()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function ()
  local lazygit = Terminal:new({direction = "float", cmd = "lazygit"})
  return lazygit:toggle()
end

local pythonTerm = function ()
  local pyt = Terminal:new({direction = "vertical", cmd = "bpython", size = 30})
  return pyt:toggle()
end

local btop = function ()
  local ht = Terminal:new({direction = "float", cmd = "btop --utf-force"})
  return ht:toggle()
end

local music = function()
  local ncp = Terminal:new({direction = "float", cmd = "ncmpcpp"})
  return ncp:toggle()
end

local transp = function()
  if (vim.g.tokyodark_transparent_background == true) then
    vim.g.tokyodark_transparent_background = false
  else
    vim.g.tokyodark_transparent_background = true
  end
end


local mappings = {

  -- Quit
  q = {
    name = "Quit",
    q = {":q<cr>", "Quit"},
    Q = {":wq<cr>", "Save and Quit"},
  },

  ---- Buffers
  b = {
    name = "Buffer",
    k = {":bdelete<cr>", "Kill Buffer"},
    l = {"<C-^>", "Last Buffer"},
    b = {"<cmd>lua require('telescope.builtin').buffers()<cr>", "List Buffers"}
  },

  c = {
    name = "Code",
    a = {"<cmd>lua require('lspsaga.codeaction').code_action()<CR>", "Code Actions"},
    aa = {":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", "Code Actions Ranged"},
    s = {"<cmd>lua require('telescope.builtin').treesitter()<cr>", "Symbols"},
    r = {":lua vim.lsp.buf.rename()<CR>", "Rename Varialbe"},
  },

  -- Files
  f = {
    name = "Files",
    f = {":Files<CR>", "Find Files"},
    g = {":Rg<CR>", "Live Grep"},

  },

  -- Git
  g = {
    name = "Git",
    b = {"<cmd>lua require('telescope.builtin').git_branches()<cr>", "Branches"},
    s = {"<cmd>lua require('telescope.builtin').git_status()<cr>", "Stash"},
    c = {"<cmd>lua require('telescope.builtin').git_commits()<cr>", "Commits"},
    t = {"<cmd>lua require('telescope.builtin').git_stash()<cr>", "Stash"},
    f = {"<cmd>lua require('telescope.builtin').git_files()<cr>", "Files"},
  },

  -- Help
  h = {
    name = "Help",
    c = {"<cmd>lua require('telescope.builtin').commands()<CR>", "Commands"},
    h = {"<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help Tags"},
    t = {":Telescope<CR>", "Telescope"},
    m = {"<cmd>lua require('telescope.builtin').man_pages()<CR>", "Man Pages"},
    r = {
      name = "Reload",
      r = {":so C:\\Users\\Faiz\\AppData\\Local\\nvim\\init.lua <CR>", "Source configuration"},
      R = {":so C:\\Users\\Faiz\\AppData\\Local\\nvim\\init.lua <CR> :PackerSync <CR>", "Source and install plugins"},
    },
    p = {":PackerSync <CR>", "Packer Sync"}

  },

  -- LSP
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
  },

  ---- Windows
  w = {
    name = "window",
    o = {"<C-w>o", "Maximize pane"},
    j = {":wincmd j<CR>", "Go to botton pane"},
    k = {":wincmd k<CR>", "Go to upper pane"},
    h = {":wincmd h<CR>", "Go to left pane"},
    l = {":wincmd l<CR>", "Go to right pane"},
    c = {":close <CR>", "Close Window"},
    s = {":sp <CR>", "Split Horizontally"},
    v = {":vs <CR>", "Split Vertically"},
  },

  -- Opening Various Stuff
  o = {
    name = "open",
    b = {":enew<CR>", "Open new empty buffer"},
    w = {"<Plug>VimwikiIndex<CR>", "Open Wiki"}
  },

  -- Project Management
  p = {
    name = "Project",
    p = {":Telescope projects<CR>", "Switch Projects"},
  },

  -- Toggle
  t = {
    name = "Toggle",
    m = {music, "Toggle Music Player"},
    t = {":ToggleTerm<CR>", "Open Terminal"},
    f = {toggle_float, "Floating Terminal"},
    g = {toggle_lazygit, "Open Lazygit"},
    s = {btop, "Open System Monitor"},
    o = {transp, "Toggle Opacity"},
    p = {pythonTerm, "Open Python Terminal"}
  },

  -- Jupyter Bindings
  j = {
    name = "Jupyter",
    i = {":MagmaInit python3<CR>", "Initialize Python environment"},
    n = {"o# %%<CR>", "New Code Cell"},
    l = {":MagmaEvaluateLine<CR>", "Evaluate Line"},
    o = {":MagmaShowOutput<CR>", "Show Output"},
    r = {":MagmaReevaluateCell<CR>", "Reevaluate Cell"},
    p = {":MagmaEvaluateOperator<CR>", "Magma Evaluate Operator"},
    d = {":MagmaDelete<CR>", "Magma Delete"},
    e = {":MagmaInit ir<CR>", "Initialize R Environment"}
  },

  -- Context Specific
  m = {
    name = "Wiki",
    h = {":Vimwiki2HTML", "Open current file as html"},
    n = {":VimwikiGoto", "Goto or create new page"},
  },

  -- NvimTree
  n = {":NvimTreeToggle<CR>", "Toggle NvimTree"},

}

wk.register(mappings, wopts)
wk.register({
  j = {
    name = "Jupyter",
    v = {":<C-u>MagmaEvaluateVisual<CR>", "Evaluate Visual"},
  }
}, vopts)
