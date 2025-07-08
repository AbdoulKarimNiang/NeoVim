return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G" },
  keys = {
    { "<leader>gg", "<cmd>Git<CR>", desc = "Git status" },
    { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git commit" },
    { "<leader>gP", "<cmd>Git push<CR>", desc = "Git push" },
    { "<leader>gL", "<cmd>Git pull<CR>", desc = "Git pull" },
    { "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff" },
    { "<leader>gB", "<cmd>Git blame<CR>", desc = "Git blame" },
    { "<leader>gl", "<cmd>Git log<CR>", desc = "Git log" },
    { "<leader>gf", "<cmd>Git fetch<CR>", desc = "Git fetch" },
  },
}
