return {
  "benlubas/molten-nvim",
  version = "^1.0.0",
  build = ":UpdateRemotePlugins",
  ft = { "python", "jupyter" }, -- Only load for Python and Jupyter files
  init = function()
    -- Molten configuration
    vim.g.molten_image_provider = "none"
    vim.g.molten_output_win_max_height = 20
    vim.g.molten_auto_open_output = false
    vim.g.molten_wrap_output = true
    vim.g.molten_virt_text_output = true
    vim.g.molten_virt_lines_off_by_1 = true
    vim.g.molten_use_border_highlights = true
  end,
}
