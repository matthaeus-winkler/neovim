return {
	{
		"echasnovski/mini.files",
		keys = {
			{ "<leader>E", "<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>", desc = "Open MiniFiles" },
		},
		opts = {
			windows = {
				preview = true,
				width_preview = 100,
			},
		},
		lazy = false,
	},
}
