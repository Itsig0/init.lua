vim.g.mapleader = " "

-- open file explorer
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
