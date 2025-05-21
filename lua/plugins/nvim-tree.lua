return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				filters = {
					dotfiles = false,
				},
				git = {
					enable = true,
					ignore = false,
					timeout = 400,
				},
        update_focused_file = {
          enable = true,
        },
			})
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = false,
	},
}
