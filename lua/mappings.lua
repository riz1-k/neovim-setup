require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory 
map("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
map(
	"n",
	"<S-h>",
	"<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal <cr>",
	{ desc = "[P]Open telescope buffers" }
)
map({ "n", "v" }, "<leader>mp", function()
     local conform = require("conform")
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
