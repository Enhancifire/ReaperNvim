-- Highest priority - Plugins ---------------------------
-- Bootstrap Packer if not available
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	print("Cloning Packer")
	-- execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })

	execute("packadd packer.nvim")
	require("user.plugins")
	execute("PackerSync")

	vim.api.nvim_create_autocmd("User", {
		pattern = "PackerComplete",
		callback = function()
			vim.cmd("bw | silent! MasonInstallAll")
			require("packer").loader("nvim-treesitter")
		end,
	})
end

require("user.plugins")

-- User Settings ----------------------------------------
require("user.keymaps")
require("user.whichkey")
require("user.settings")
require("user.hydra-config")
require("user.autofire")

-- Intellisense -----------------------------------------
require("tsconfig")
require("lsp")

-- Appearance -------------------------------------------
require("appearance")

-- Test Functions ---------------------------------------
require("functions")

-- System Functions -------------------------------------
require("system")

-- Notifications ----------------------------------------
require("notify").setup({
	background_color = "#54577C",
})

vim.notify = require("notify")
