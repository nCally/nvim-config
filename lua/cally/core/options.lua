local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.smarttab = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

opt.scrolloff = 10

opt.cursorline = true

opt.termguicolors = true
-- opt.background = "dark"
opt.background = "light"
opt.signcolumn = "yes"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.foldmethod = "syntax"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
