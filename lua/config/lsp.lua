local lsp = vim.lsp

-- Custom settings that extend nvim-lspconfig defaults
lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },

      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },

      telemetry = {
        enable = false,
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

-- List of servers
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

-- Enable every server with the same on_attach
for _, server in ipairs(servers) do
  lsp.enable(server)
end
