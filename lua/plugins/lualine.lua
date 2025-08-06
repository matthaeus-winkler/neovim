return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local custom_auto = require("lualine.themes.auto")
      custom_auto.normal.c.bg = "none"

      local function buffer_count()
        return " " .. tostring(#vim.fn.getbufinfo({ buflisted = 1 }))
      end

      require("lualine").setup({
        options = {
          theme = custom_auto,
          globalstatus = true,
        },
        sections = {
          lualine_y = {
            "location", "progress"
          },
          lualine_z = {
            "datetime"
          },
        },
        tabline = {
          lualine_a = {
            {
              buffer_count,
              separator = "|",
              section_separators = { right = "" },
            },
            {
              "filename",
              section_separators = { right = "" },
            },
          },
          lualine_z = {
            {
              "tabs",
              section_separators = { right = "" },
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
