-- init.lua - Main Neovim configuration entry point

-- Set leader key early (before loading plugins)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load configuration modules
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Load plugins
require("plugins")

-- Additional settings for Windows
if vim.fn.has("win32") == 1 then
-- Set PowerShell as default shell
vim.opt.shell = "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellxquote = ""
end
