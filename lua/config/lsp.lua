local lsp = vim.lsp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.config('*', {
  capabilities = capabilities,
})

lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      }
    },
  },
})
