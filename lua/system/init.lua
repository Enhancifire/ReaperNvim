local has = function(x)
	return vim.fn.has(x) == 1
end

local is_linux = has("macunix")
local is_win = has("win32")

if is_linux then
	require("system.linux")
end

if is_win then
	require("system.windows")
end
