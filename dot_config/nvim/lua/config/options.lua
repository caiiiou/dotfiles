vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"

-- Indentation (guess-indent overrides per file)
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Splits and scrolling
opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 8

-- Folds start open
opt.foldlevelstart = 99

-- Other
opt.undofile = true
opt.clipboard = "unnamedplus"
opt.updatetime = 250

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
  float = { border = "rounded" },
})
