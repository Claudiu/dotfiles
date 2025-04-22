-- Theme
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        cmp = true,
        treesitter = true,
        telescope = true,
        which_key = true,
        mason = true,
      },
    })
    vim.cmd.colorscheme "catppuccin"
  end
}