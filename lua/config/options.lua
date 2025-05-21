local opt = vim.opt

-- Visual Interface
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.winborder = "rounded"
opt.signcolumn = "number"
opt.cursorline = true
opt.cursorlineopt = "number"

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Navigation
opt.whichwrap:append "<>[]hl"

-- Indentation and Formatting
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Clipboard Integration
opt.clipboard = "unnamedplus"

-- Undo History
opt.undofile = true
opt.undodir = vim.fn.expand("~/.config/nvim/undo")

-- Code Folding
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevelstart = 99

-- Performance
opt.updatetime = 250
opt.timeoutlen = 400
