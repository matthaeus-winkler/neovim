local lsp = vim.lsp

-- Custom settings that extend nvim-lspconfig defaults
lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
})

lsp.config("helm_ls", {
  settings = {
    ['helm-ls'] = {
      yamlls = {
        path = "yaml-language-server",
      }
    }
  },
})

-- Enable all servers (uses nvim-lspconfig defaults + any custom settings above)
local servers = {
  "angularls",
  "bashls",
  "eslint",
  "gopls",
  "helm_ls",
  "html",
  "jdtls",
  "lua_ls",
  "marksman",
  "pyright",
  "terraformls",
  "ts_ls",
  "yamlls",
}

for _, server in ipairs(servers) do
  lsp.enable(server)
end
