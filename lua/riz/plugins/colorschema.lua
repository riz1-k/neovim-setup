return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- make sure to load this before all other start plugins
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- Set Catppuccin flavour to Mocha
				background = {
					light = "latte", -- Default background for light mode
					dark = "mocha", -- Default background for dark mode
				},
				transparent_background = false, -- Set to true if you want no background
				show_end_of_buffer = false, -- Hide the '~' at the end of buffers
				term_colors = true, -- Enable terminal colors
				styles = {
					comments = { "italic" }, -- Italic comments
					conditionals = { "italic" },
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
				},
				color_overrides = {}, -- Override specific colors if necessary
				custom_highlights = function(colors)
					return {
						-- Customize highlight groups with Catppuccin Mocha colors
						Normal = { fg = colors.text, bg = colors.base },
						Comment = { fg = colors.overlay0, style = { "italic" } },
						CursorLine = { bg = colors.surface1 },
						StatusLine = { fg = colors.text, bg = colors.mantle },
					}
				end,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
				},
			})
			-- Load the colorscheme
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
