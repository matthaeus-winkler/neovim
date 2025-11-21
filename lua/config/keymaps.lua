local map = vim.keymap.set

-- Disable double leader (prevents cursor jump after which-key timeout)
map("n", "<leader><leader>", "<Nop>")

-- Code: LSP and Code actions
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf

    map("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
    map("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to declaration" })
    map("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Show hover documentation" })
    map("n", "gra", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code action", remap = true })
    map("n", "grn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename symbol", remap = true })
    map("n", "grr", vim.lsp.buf.references, { buffer = bufnr, desc = "List references", remap = true })
    map("n", "gri", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to implementation", remap = true })
    map("n", "grt", vim.lsp.buf.type_definition, { buffer = bufnr, desc = "Go to type definition" })
    map("n", "gO", vim.lsp.buf.document_symbol, { buffer = bufnr, desc = "Go to symbol", remap = true })
    map("n", "<leader>lr", "<cmd>FzfLua lsp_references<CR>", { buffer = bufnr, desc = "Find references" })
    map("n", "<leader>ls", "<cmd>FzfLua lsp_document_symbols<CR>", { buffer = bufnr, desc = "Document symbols" })
    map("n", "<leader>lw", "<cmd>FzfLua lsp_workspace_symbols<CR>", { buffer = bufnr, desc = "Workspace symbols" })
  end,
})

-- Buffer / Window
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Fzf
map("x", "<leader>fg", "<cmd>FzfLua grep_visual<CR>", { desc = "Grep selection" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find files" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>FzfLua helptags<CR>", { desc = "Help tags" })
map("n", "<leader>fs", "<cmd>FzfLua grep_curbuf<CR>", { desc = "Search current file" })
map("n", "<leader>fo", "<cmd>FzfLua oldfiles<CR>", { desc = "Recent files" })
map("n", "<leader>fk", "<cmd>FzfLua keymaps<CR>", { desc = "Keymaps" })
map("n", "<leader>fc", "<cmd>FzfLua commands<CR>", { desc = "Commands" })
map("n", "<leader>fr", "<cmd>FzfLua resume<CR>", { desc = "Resume last picker" })
map("n", "<leader>fw", "<cmd>FzfLua grep_cword<CR>", { desc = "Grep word under cursor" })

-- Git
map("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" })
map("n", "<leader>gD", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })
map("n", "<leader>gh", "<cmd>DiffviewFileHistory<CR>", { desc = "Show Filehistory" })
map("n", "<leader>gc", "<cmd>FzfLua git_commits<CR>", { desc = "Show Commits" })
map("n", "<leader>gs", "<cmd>FzfLua git_status<CR>", { desc = "Show Status" })

-- Diagnostics
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
map("n", "<leader>dl", "<cmd>FzfLua diagnostics_workspace<CR>", { desc = "List all diagnostics" })
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
map("n", "<leader>dn", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })
map("n", "<leader>dp", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
map("n", "<leader>dq", vim.diagnostic.setqflist, { desc = "Set diagnostics to quickfix list" })
