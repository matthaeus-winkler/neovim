local map = vim.keymap.set

-- File Explorer: Manage NvimTree for file navigation
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
map("n", "<leader>E", "<cmd>NvimTreeFocus<CR>", { desc = "Focus NvimTree" })

-- Buffer Navigation: Switch and manage buffers
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

-- Window Navigation: Move between Neovim windows
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Telescope: Search and navigation with Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
map("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Search current file" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git status" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Keymaps" })
map("n", "<leader>fc", "<cmd>Telescope commands<CR>", { desc = "Commands" })

-- Code: Language server protocol and Code actions
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "<leader>ct", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
map("n", "<leader>cs", vim.lsp.buf.signature_help, { desc = "Signature help" })
map("n", "<leader>cw", "<cmd>Telescope lsp_workspace_symbols<CR>", { desc = "Workspace symbols" })
map("n", "<leader>cu", "<cmd>Telescope lsp_references<CR>", { desc = "Find references" })
map("n", "<leader>cy", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Document symbols" })
map("n", "<leader>ci", vim.lsp.buf.implementation, { desc = "Go to implementation" })

-- Diagnostics: LSP diagnostic tools for errors, warnings, and navigation
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
map("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", { desc = "List all diagnostics" })
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
map("n", "<leader>dn", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next diagnostic" })
map("n", "<leader>dp", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Previous diagnostic" })
map("n", "<leader>dq", vim.diagnostic.setqflist, { desc = "Set diagnostics to quickfix list" })
