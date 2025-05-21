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
						DashboardIcon = { fg = palette.carpYellow },
						DashboardDesc = { fg = palette.fujiWhite },
						DashboardKey = { fg = palette.waveAqua2 },
					}
				end,
			})
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
