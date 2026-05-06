return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- Better completion/types for vim.uv
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
}
