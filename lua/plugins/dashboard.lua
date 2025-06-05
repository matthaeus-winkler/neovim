return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        config = {
          header = {
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
          },
          shortcut = {
            {
              icon = " ",
              group = "DashboardShortcut",
              desc = "Find Files",
              key = "f",
              action = function()
                require("telescope.builtin").find_files()
              end,
            },
            {
              icon = " ",
              group = "DashboardShortcut",
              desc = "Recent Files",
              key = "o",
              action = function()
                require("telescope.builtin").oldfiles()
              end,
            },
            {
              icon = " ",
              group = "DashboardShortcut",
              desc = "Grep Files",
              key = "g",
              action = function()
                require("telescope.builtin").live_grep()
              end,
            },
            {
              icon = "󰒲 ",
              group = "DashboardShortcut",
              desc = "Lazy",
              key = "l",
              action = "Lazy",
            },
            {
              icon = "󰣪 ",
              group = "DashboardShortcut",
              desc = "Mason",
              key = "m",
              action = "Mason",
            },
            {
              icon = "󰅚 ",
              group = "DashboardShortcut",
              desc = "Quit",
              key = "q",
              action = "qa",
            },
          },
          footer = {
            "",
            " Neovim " .. vim.version().major .. "." .. vim.version().minor,
            "",
          },
          vertical_center = true,
        },
      })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
