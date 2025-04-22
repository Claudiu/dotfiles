-- Installation of the package manager (lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  require("config.plugins.catppuccin"),
  require("config.plugins.neo-tree"),
  require("config.plugins.lualine"),
  require("config.plugins.telescope"),
  require("config.plugins.which-key"),
  require("config.plugins.lspconfig"),
  require("config.plugins.treesitter"),
  require("config.plugins.autopairs"),
  require("config.plugins.gitsigns"),
  require("config.plugins.bufferline"),
  require("config.plugins.toggleterm"),
  require("config.plugins.indent-blankline"),
  require("config.plugins.Comment"),
  require("config.plugins.trouble"),
  require("config.plugins.rust-tools"),

  -- Nvim-cmp-vsnip - vsnip completion source for nvim-cmp
  {
    "hrsh7th/cmp-vsnip",
    dependencies = { "hrsh7th/nvim-cmp", "rafamadriz/friendly-snippets" },
  },

  -- Vsnip - snippet engine
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- Nvim-cmp-path - path completion source for nvim-cmp
  { "hrsh7th/cmp-path" },

  -- Nvim-cmp-buffer - buffer completion source for nvim-cmp
  { "hrsh7th/cmp-buffer" },

  -- Nvim-cmp-cmdline - cmdline completion source for nvim-cmp
  { "hrsh7th/cmp-cmdline" },

  -- Nvim-cmp-nvim-lsp - nvim-lsp completion source for nvim-cmp
  { "hrsh7th/cmp-nvim-lsp" },

  -- Nvim-cmp-luasnip - luasnip completion source for nvim-cmp
  { "saadparwaiz1/cmp_luasnip" },

  -- Nvim-cmp - completion plugin
  { "hrsh7th/nvim-cmp" },

  -- LuaSnip - snippet engine
  { "L3MON4D3/LuaSnip" },

  -- Fidget.nvim - LSP progress indicator
  { "j-hui/fidget.nvim" },

  -- Mason.nvim - LSP installer
  { "williamboman/mason.nvim" },

  -- Mason-lspconfig.nvim - Mason integration with nvim-lspconfig
  { "williamboman/mason-lspconfig.nvim" },

  -- Nvim-lspconfig - LSP configuration
  { "neovim/nvim-lspconfig" },

  -- Nvim-treesitter - parser generator tool and incremental parsing library
  { "nvim-treesitter/nvim-treesitter" },

  -- Nvim-autopairs - autopairs plugin
  { "windwp/nvim-autopairs" },

  -- Gitsigns.nvim - git integration
  { "lewis6991/gitsigns.nvim" },

  -- Bufferline.nvim - buffer management
  { "akinsho/bufferline.nvim" },

  -- Toggleterm.nvim - terminal integration
  { "akinsho/toggleterm.nvim" },

  -- Indent-blankline.nvim - indent guides
  { "lukas-reineke/indent-blankline.nvim" },

  -- Comment.nvim - comment shortcut
  { "numToStr/Comment.nvim" },

  -- Trouble.nvim - diagnostics, references, etc. list
  { "folke/trouble.nvim" },

  -- Rust-tools.nvim - Rust specific tools
  { "simrat39/rust-tools.nvim" },

  -- Nvim-web-devicons - file icons
  { "nvim-tree/nvim-web-devicons" },

  -- Plenary.nvim - lua functions
  { "nvim-lua/plenary.nvim" },

  -- Nui.nvim - UI components
  { "MunifTanjim/nui.nvim" },

  -- Telescope-fzf-native.nvim - fzf native extension for telescope
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  -- Telescope.nvim - fuzzy finder
  { "nvim-telescope/telescope.nvim" },

  -- Which-key.nvim - keybinding hints
  { "folke/which-key.nvim" },
})