return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = { transparent = true },
      auto_integrations = true,
      custom_highlights = {
        LineNr = { fg = "#FBAFD2" },
        CursorLineNr = { fg = "#97CF8A", style = { "bold" } },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
