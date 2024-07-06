return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.timeout = true
    vim.g.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
