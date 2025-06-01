return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local custom_auto = require("lualine.themes.auto")
			custom_auto.normal.c.bg = "none"

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
