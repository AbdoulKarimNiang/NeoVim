return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "~" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
    },
    on_attach = function(bufnr)
      local gs = require("gitsigns")
      vim.keymap.set("n", "<leader>gp", gs.prev_hunk, { buffer = bufnr, desc = "Previous Hunk" })
      vim.keymap.set("n", "<leader>gn", gs.next_hunk, { buffer = bufnr, desc = "Next Hunk" })
      vim.keymap.set("n", "<leader>ph", gs.preview_hunk, { buffer = bufnr, desc = "Preview Hunk" })
    end,
  },
}
