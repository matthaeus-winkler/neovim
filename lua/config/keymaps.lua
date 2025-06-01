local map = vim.keymap.set

-- Disable double leader key press to prevent cursor movement after which-key popup
map("n", "<leader><leader>", "<Nop>")

-- Code: Language server protocol and Code actions
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    -- LSP Navigation
    map("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
    map("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to declaration" })
    map("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Show hover documentation" })
    map("n", "gra", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code action", remap = true })
    map("n", "grn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename symbol", remap = true })
    map("n", "grr", vim.lsp.buf.references, { buffer = bufnr, desc = "List references", remap = true })
    map("n", "gri", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to implementation", remap = true })
    map("n", "grt", vim.lsp.buf.type_definition, { buffer = bufnr, desc = "Go to type definition" })
    map("n", "gO", vim.lsp.buf.document_symbol, { buffer = bufnr, desc = "Go to symbol", remap = true })
    -- Telescope-Enhanced LSP Actions
    map("n", "<leader>lr", "<cmd>Telescope lsp_references<CR>", { buffer = bufnr, desc = "Find references" })
    map("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<CR>", { buffer = bufnr, desc = "Document symbols" })
    map("n", "<leader>lw", "<cmd>Telescope lsp_workspace_symbols<CR>", { buffer = bufnr, desc = "Workspace symbols" })
  end,
})

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

-- Diagnostics: LSP diagnostic tools for errors, warnings, and navigation
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
map("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", { desc = "List all diagnostics" })
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
map("n", "<leader>dn", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next diagnostic" })
map("n", "<leader>dp", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Previous diagnostic" })
map("n", "<leader>dq", vim.diagnostic.setqflist, { desc = "Set diagnostics to quickfix list" })
