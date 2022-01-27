local wk = require('which-key')

local wopts = { prefix = '<leader>' }

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function ()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function ()
  local lazygit = Terminal:new({direction = "float", cmd = "lazygit"})
  return lazygit:toggle()
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
    a = {":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", "Code Actions Ranged"},
    s = {"<cmd>lua require('telescope.builtin').treesitter()<cr>", "Symbols"},
    r = {":lua vim.lsp.buf.rename()<CR>", "Rename Varialbe"},
  },

  -- Files
  f = {
    name = "Files",
    f = {"<cmd>lua require('telescope.builtin').find_files()<cr>", "Find Files"},
    g = {"<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live Grep"},

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
    m = {"<cmd>lua require('telescope.builtin').man_pages()<CR>", "Man Pages"}
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

  o = {
    name = "open",
    t = {":ToggleTerm<CR>", "Open Terminal"},
    f = {toggle_float, "Floating Terminal"},
    g = {toggle_lazygit, "Open Lazygit"},
  },

  -- NvimTree
  n = {":NvimTreeToggle<CR>", "Toggle NvimTree"},
}

wk.register(mappings, wopts)
