return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      keymap = {
        builtin = {
          ["<C-u>"] = "preview-half-page-up",
          ["<C-d>"] = "preview-half-page-down",
        },
      },
    },
  },
}
