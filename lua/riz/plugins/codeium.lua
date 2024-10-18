return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({
			workspace_root = {
				use_lsp = false,
				find_root = nil,
				paths = {
					".git",
					"package.json",
				},
			},
		})
	end,
}
