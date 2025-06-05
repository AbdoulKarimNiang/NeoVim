-- config/keymaps.lua - Key mappings

local keymap = vim.keymap.set

-- Clear search highlights
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Save file
keymap("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Quit
keymap("n", "<C-q>", "<cmd>q<CR>", { desc = "Quit" })

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize windows
keymap("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
keymap("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Navigate buffers
keymap("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- Better indenting
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Keep cursor centered when scrolling
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- File explorer
keymap("n", "<leader>e", "<cmd>Explore<CR>", { desc = "Open file explorer" })

-- Split windows
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- Terminal
keymap("n", "<leader>tt", "<cmd>terminal<CR>", { desc = "Open terminal" })
keymap("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Quick fix list
keymap("n", "<leader>qo", "<cmd>copen<CR>", { desc = "Open quickfix list" })
keymap("n", "<leader>qc", "<cmd>cclose<CR>", { desc = "Close quickfix list" })
keymap("n", "<leader>qn", "<cmd>cnext<CR>", { desc = "Next quickfix item" })
keymap("n", "<leader>qp", "<cmd>cprev<CR>", { desc = "Previous quickfix item" })

-- Location list
keymap("n", "<leader>lo", "<cmd>lopen<CR>", { desc = "Open location list" })
keymap("n", "<leader>lc", "<cmd>lclose<CR>", { desc = "Close location list" })
keymap("n", "<leader>ln", "<cmd>lnext<CR>", { desc = "Next location item" })
keymap("n", "<leader>lp", "<cmd>lprev<CR>", { desc = "Previous location item" })

-- Diagnostic keymaps
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap("n", "<leader>de", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
