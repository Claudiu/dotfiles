-- File explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        width = 30,
      },
    })
    -- Keybinding to toggle file explorer
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true, desc = "Toggle file explorer" })
  end
}