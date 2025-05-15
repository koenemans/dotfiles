require("config.lazy")

local opt = vim.opt
local g = vim.g

-- General
opt.relativenumber = true
opt.linebreak = true
opt.showbreak = "+++"
opt.textwidth = 100
opt.showmatch = true
opt.visualbell = true
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true
opt.incsearch = true
opt.autoindent = true
opt.shiftwidth = 2
opt.smartindent = true
opt.smarttab = true
opt.tabstop = 2

-- Advanced
opt.confirm = true
opt.ruler = false
opt.undolevels = 1000

-- Better Netrw
g.netrw_banner = 0 -- Hide banner
