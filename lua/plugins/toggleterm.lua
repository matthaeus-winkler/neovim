return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			local Terminal = require("toggleterm.terminal").Terminal
			local float_term = Terminal:new({
				direction = "float",
				float_opts = {
					border = "rounded",
					width = 120,
					height = 30,
					title_pos = "center",
				},
				display_name = "Terminal",
				on_open = function()
					vim.cmd("startinsert")
				end,
			})

			function _FLOAT_TERM_TOGGLE()
				float_term:toggle()
			end

			vim.keymap.set("n", "<C-t>", "<cmd>lua _FLOAT_TERM_TOGGLE()<CR>", { desc = "Toggle floating terminal" })
			vim.keymap.set(
				"t",
				"<C-t>",
				[[<C-\><C-n><cmd>lua _FLOAT_TERM_TOGGLE()<CR>]],
				{ desc = "Toggle floating terminal" }
			)
		end,
	},
}
