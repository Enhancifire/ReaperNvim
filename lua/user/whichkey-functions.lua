
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
  local pyt = Terminal:new({direction = "tab", cmd = "bpython", size = 30})
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
