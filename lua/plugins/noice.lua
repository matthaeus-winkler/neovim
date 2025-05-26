return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      messages = {
        view_search = false,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
    }
  }
}
