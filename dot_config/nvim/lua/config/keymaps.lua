local map = vim.keymap.set

-- Finder
map("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "Buffers" })
map("n", "<leader><leader>", "<cmd>buffer #<cr>", { desc = "Previous buffer" })
map("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "Files" })
map("n", "<leader>g", "<cmd>FzfLua grep<cr>", { desc = "Grep" })
map("n", "<leader>lg", "<cmd>FzfLua live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>r", "<cmd>FzfLua resume<cr>", { desc = "Resume finder" })
map("n", "<leader>d", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Diagnostics" })
map("n", "<leader>s", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "Symbols" })

-- Code
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>ch", "<cmd>LspClangdSwitchSourceHeader<cr>", { desc = "Switch source/header" })
map({ "n", "v" }, "<leader>cf", function()
  require("conform").format({ async = true })
end, { desc = "Format" })

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<cr>")
