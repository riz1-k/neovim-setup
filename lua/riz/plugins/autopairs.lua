return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	config = function()
		-- import nvim-autopairs
		local autopairs = require("nvim-autopairs")

		-- configure autopairs
		autopairs.setup({
			active = true,
			on_config_done = nil,
			---@usage  modifies the function or method delimiter by filetypes
			map_char = {
				all = "(",
				tex = "{",
			},
			---@usage check bracket in same line
			enable_check_bracket_line = false,
			---@usage check treesitter
			check_ts = true,
			ts_config = {
				lua = { "string", "source" },
				javascript = { "string", "template_string" },
				java = false,
			},
			disable_filetype = { "TelescopePrompt", "spectre_panel" },
			---@usage disable when recording or executing a macro
			disable_in_macro = false,
			---@usage disable  when insert after visual block mode
			disable_in_visualblock = false,
			disable_in_replace_mode = true,
			ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", ""),
			enable_moveright = true,
			---@usage add bracket pairs after quote
			enable_afterquote = true,
			---@usage trigger abbreviation
			enable_abbr = false,
			---@usage switch for basic rule break undo sequence
			break_undo = true,
			map_cr = true,
			---@usage map the <BS> key
			map_bs = true,
			---@usage map <c-w> to delete a pair if possible
			map_c_w = false,
			---@usage Map the <C-h> key to delete a pair
			map_c_h = false,
			---@usage  change default fast_wrap
			fast_wrap = {
				map = "<M-e>",
				chars = { "{", "[", "(", '"', "'" },
				pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
				offset = 0, -- Offset from pattern match
				end_key = "$",
				keys = "qwertyuiopzxcvbnmasdfghjkl",
				check_comma = true,
				highlight = "Search",
				highlight_grey = "Comment",
			},
		})

		-- import nvim-autopairs completion functionality
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- import nvim-cmp plugin (completions plugin)
		local cmp = require("cmp")

		-- make autopairs and completion work together
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
