-- Comment shortcut
return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      -- Add keybinding descriptions for which-key
      mappings = {
        basic = true,
        extra = true,
      },
    })
  end
}