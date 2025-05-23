return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors)
          local palette = colors.palette
          return {
            -- Floating windows
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- blink.cmp completion menu
            BlinkCmpMenu = { bg = "none", fg = palette.fujiWhite },
            BlinkCmpMenuBorder = { bg = "none", fg = palette.sumiInk6 },
            BlinkCmpMenuSelection = { bg = palette.waveBlue1, fg = palette.fujiWhite },

            -- StatusLine & Tabline
            TabLine = { bg = "none" },
            TabLineSel = { bg = "none" },
            TabLineFill = { bg = "none" },
            StatusLine = { bg = "none" },
            StatusLineNC = { bg = "none" },
            InactiveTab = { fg = palette.fujiWhite },

            -- Telescope
            TelescopeBorder = { bg = "none" },

            -- Dashboard
            DashboardHeader = { fg = palette.autumnRed },
            DashboardFooter = { fg = palette.crystalBlue },
            DashboardShortcut= { fg = palette.autumnGreen },
          }
        end,
      })
      vim.cmd.colorscheme("kanagawa")
    end,
  },
}
