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

-- alt+ (j or k) to move the selected line up or download
map({"n","v"}, "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
map({"n","v"}, "<A-k>", ":m '<-2<cr>gv=gv" , { desc = "Move line up" })

-- leader + s + (- or \) to create a split horizontally or vertically
map("n", "<leader>s-", ":split<cr>", { desc = "Split horizontally" })
map("n", "<leader>s\\", ":vsplit<cr>", { desc = "Split vertically" })

-- leader + d + (n or p) to navigate to next or previous diagnostics
map("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
map("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
