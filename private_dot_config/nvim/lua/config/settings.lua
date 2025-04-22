-- Basic Settings
vim.g.mapleader = " "  -- Set leader key to space
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = false -- Relative line numbers
vim.opt.wrap = false -- No line wrapping
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.tabstop = 4 -- Number of spaces for a tab
vim.opt.shiftwidth = 4 -- Number of spaces for each indentation
vim.opt.softtabstop = 4 -- Number of spaces for a tab when editing
vim.opt.smartindent = true -- Auto indent
vim.opt.cursorline = true -- Highlight current line
vim.opt.termguicolors = true -- True color support
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.scrolloff = 8 -- Minimum lines to keep above and below cursor
vim.opt.colorcolumn = "80" -- Ruler at 80 characters
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.mouse = "a" -- Enable mouse
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Override ignorecase when search pattern has upper case
vim.opt.undofile = true -- Enable persistent undo
vim.opt.updatetime = 50 -- Faster update time (for CursorHold & CursorHoldI)
vim.opt.timeoutlen = 300 -- Faster timeout for key sequences
vim.opt.completeopt = "menuone,noselect" -- Better completion experience

-- This is needed for the clipboard provider to work correctly.
-- Ensure you have xclip installed on your system.
-- Ensure clipboard provider is available
vim.g.clipboard = {
  name = 'system-clipboard',
  copy = {
    ["+"] = 'xclip -selection clipboard -in',
    ["*"] = 'xclip -selection clipboard -in',
  },
  paste = {
    ["+"] = 'xclip -selection clipboard -out',
    ["*"] = 'xclip -selection clipboard -out',
  },
  cache_enabled = 1,
}
