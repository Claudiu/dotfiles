-- Which Key for keybinding hints
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.setup({
      plugins = {
        marks = true,
        registers = true,
        spelling = { enabled = true },
        presets = {
          operators = true,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },
      -- Using win instead of deprecated window option
      win = {
        border = "single",
        padding = { 2, 2, 2, 2 },
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "center",
      },
      show_help = true,
      show_keys = true,
    })

    -- Register groups with proper format
    wk.register({
      f = { name = "Find/Files" },
      b = { name = "Buffers" },
      h = { name = "Git Hunks" },
      x = { name = "Diagnostics/Trouble" },
      r = { name = "Rename/Refactor" },
      s = { name = "Split Windows" },
    }, { prefix = "<leader>" })
  end
}