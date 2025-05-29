return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local custom_auto = require("lualine.themes.auto")
      custom_auto.normal.c.bg = "none"

      local nvim_tree_shift = {
        function()
          local winnr = require("nvim-tree.view").get_winnr()
          if winnr == nil then
            return ""
          end
          return string.rep(" ", vim.api.nvim_win_get_width(winnr) - 1)
        end,
        cond = require("nvim-tree.view").is_visible,
        color = "NvimTreeNormal",
        section_separators = { left = "", right = "" },
      }

      require("lualine").setup({
        options = {
          theme = custom_auto,
          globalstatus = true,
        },
        sections = {
          lualine_z = {
            "location",
            {
              function()
                return os.date("%H:%M")
              end,
            },
          },
        },
        tabline = {
          lualine_a = {
            nvim_tree_shift,
            {
              "buffers",
              section_separators = { left = "", right = "" },
              buffers_color = {
                inactive = { fg = "InactiveTab", bg = "none" },
              },
            },
          },
          lualine_z = {
            {
              "tabs",
              section_separators = { left = "", right = "" },
              tabs_color = {
                inactive = { fg = "InactiveTab", bg = "none" },
              },
            },
          },
        },
      })
    end,
  },
}
