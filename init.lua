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

-- JSON specific indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "json",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- Persistent undo

-- Create undo directory if it doesn't exist (Windows path)
local undo_dir = vim.fn.expand('~/AppData/Local/nvim/undo')
if vim.fn.isdirectory(undo_dir) == 0 then
    vim.fn.mkdir(undo_dir, 'p')
end

-- Enable persistent undo
vim.opt.undofile = true
vim.opt.undodir = undo_dir
vim.opt.undolevels = 1000      -- Maximum number of changes that can be undone
vim.opt.undoreload = 10000     -- Maximum number lines to save for undo on buffer reload
