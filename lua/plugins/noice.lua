return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		cmdline = {
			enabled = true, -- enables the Noice cmdline UI
			view = "cmdline_popup", -- disables the popup cmdline
			opts = {}, -- global options for the cmdline
		},
		routes = {
			{
				filter = { event = "notify", find = "No information available" },
				opts = { skip = true },
			},
		},
		presets = {
			lsp_doc_border = true,
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
