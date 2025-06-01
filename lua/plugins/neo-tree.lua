return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		lazy = false,
		keys = {
			{ "<leader>e", "<cmd>Neotree float toggle reveal<CR>", desc = "Toggle NeoTree" },
		},
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {
			popup_border_style = "rounded",
			filesystem = {
				filtered_items = {
					visible = true,
				},
				hijack_netrw_behavior = "disabled",
			},
		},
	},
}
