-- Disable netrw as per nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disable unneeded providers to suppress :checkhealth warnings
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

vim.g.mapleader = " "

require("config.lazy")
require("config.lsp")
require("config.diagnostics")
require("config.options")
require("config.keymaps")
require("config.autocmds")
