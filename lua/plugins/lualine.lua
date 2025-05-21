return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
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
            component_separators = { left = "", right = "" },
            buffers_color = {
              inactive = { fg = "InactiveTab",  bg = 'none' },
            },
          },
        },
        lualine_z = {
          {
            "tabs",
            section_separators = { left = "", right = "" },
            tabs_color = {
              inactive = { fg = "InactiveTab",  bg = 'none' },
            },
          },
        },
			},
		},
	},
}
