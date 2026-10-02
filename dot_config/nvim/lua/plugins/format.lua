return {
  {
    "stevearc/conform.nvim",
    cmd = "ConformInfo",
    opts = {
      -- C/C++ falls back to clangd, which uses .clang-format
      default_format_opts = { lsp_format = "fallback" },
    },
  },
}
