local map = vim.keymap.set

map("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
map("n", "<leader>bb", "<cmd>buffer #<cr>", { desc = "Previous Buffer" })
map("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "Files" })
map("n", "<leader>g", "<cmd>FzfLua grep<cr>", { desc = "Grep" })
map("n", "<leader>lg", "<cmd>FzfLua live_grep<cr>", { desc = "Live Grep" })
map("n", "<leader>r", "<cmd>FzfLua resume<cr>", { desc = "Resume FzfLua" })
