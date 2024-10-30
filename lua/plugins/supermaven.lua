return {
	"supermaven-inc/supermaven-nvim",
  lazy = false,
	enabled = true,
	config = function()
		require("supermaven-nvim").setup({
      accept_suggestion = "<Tab>",
      clear_suggestion = "<C-]>",
    })
	end,
}
