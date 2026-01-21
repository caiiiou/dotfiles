return {
  {
    -- catppuccin mocha theme
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false, -- make sure it loads during startup
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true, -- disables setting the background color.
        float = {
          transparent = true, -- enable transparent floating windows
          solid = false, -- use solid styling for floating windows, see |winborder|
        },
        show_end_of_buffer = false, -- shows the '~' after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background of inactive windows
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false,   -- Force no bold
        no_underline = false, -- Force no underline
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        lsp_styles = {
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
        },
	auto_integrations = true, -- let catppuccin automatically detect installed plugins 
      })

      -- Set the colorscheme
      vim.cmd.colorscheme("catppuccin")
      -- Set line number colors
      vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FBAFD2', bold = false}) -- all lines
      vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#97CF8A', bold = true} ) -- current line
    end,
  },
}

