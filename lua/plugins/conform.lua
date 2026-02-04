return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>lf",
        function()
          require("conform").format({ async = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    ---@module "conform"
    opts = {
      formatters_by_ft = {
        html = { "prettier", stop_after_first = true },
        javascript = { "prettier", stop_after_first = true },
        json = { "prettier", stop_after_first = true },
        lua = { "stylua" },
        markdown = { "prettier", stop_after_first = true },
        sh = { "shfmt" },
        typescript = { "prettier", stop_after_first = true },
        xml = { "xmlformat", stop_after_first = true },
        yaml = { "prettier", stop_after_first = true },
      },
      default_format_opts = {
        lsp_format = "fallback",
      },
    },
  },
}
