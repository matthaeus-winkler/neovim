return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			local telescope = require("telescope.builtin")
			require("dashboard").setup({
				theme = "doom",
        disable_move = true,
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
					center = {
						{
							icon = " ",
							icon_hl = "DashboardIcon",
							desc = "Find Files",
							desc_hl = "DashboardDesc",
							key = "f",
							key_hl = "DashboardKey",
							key_format = " [%s]",
							action = function()
								telescope.find_files()
							end,
						},
						{
							icon = " ",
							icon_hl = "DashboardIcon",
							desc = "Recent Files",
							desc_hl = "DashboardDesc",
							key = "o",
							key_hl = "DashboardKey",
							key_format = " [%s]",
							action = function()
								telescope.oldfiles()
							end,
						},
						{
							icon = " ",
							icon_hl = "DashboardIcon",
							desc = "Grep Files",
							desc_hl = "DashboardDesc",
							key = "g",
							key_hl = "DashboardKey",
							key_format = " [%s]",
							action = function()
								telescope.live_grep()
							end,
						},
            {
              icon = "󰒲 ",
              icon_hl = "DashboardIcon",
              desc = "Lazy",
              desc_hl = "DashboardDesc",
              key = "l",
              key_hl = "DashboardKey",
              key_format = " [%s]",
              action = "Lazy",
          },
          {
              icon = "󰣪 ",
              icon_hl = "DashboardIcon",
              desc = "Mason",
              desc_hl = "DashboardDesc",
              key = "m",
              key_hl = "DashboardKey",
              key_format = " [%s]",
              action = "Mason",
          },
						{
							icon = "󰅚 ",
							icon_hl = "DashboardIcon",
							desc = "Quit",
							desc_hl = "DashboardDesc",
							key = "q",
							key_hl = "DashboardKey",
							key_format = " [%s]",
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
				hide = {
					statusline = false,
					tabline = false,
					winbar = false,
				},
			})
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
