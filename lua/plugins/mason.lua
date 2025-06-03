return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"angularls",
					"bashls",
					"eslint",
					"html",
					"lua_ls",
					"marksman",
					"pyright",
					"ts_ls",
				},
			})
		end,
	},
}
