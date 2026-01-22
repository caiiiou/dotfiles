return {
  { 
    -- Autopair 
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        enabled = function(bufnr) return true end, -- control if auto-pairs should be enabled when attaching to a buffer
        disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input" },
        disable_in_macro = true, -- disable when recording or executing a macro
        disable_in_visualblock = false, -- disable when insert after visual block mode
        disable_in_replace_mode = true,
        ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
        enable_moveright = true,
        enable_afterquote = true, -- add bracket pairs after quote
        enable_check_bracket_line = true, --- check bracket in same line
        enable_bracket_in_quote = true, --
        enable_abbr = false, -- trigger abbreviation
        break_undo = true, -- switch for basic rule break undo sequence
        check_ts = false,
        map_cr = true,
        map_bs = true, -- map the <BS> key
        map_c_h = false, -- Map the <C-h> key to delete a pair
        map_c_w = false, -- map <c-w> to delete a pair if possible
      })
    end,
  },

  {
    -- Automatic indentation style detection
    "NMAC427/guess-indent.nvim",
    config = function()
      require("guess-indent").setup ({
        auto_cmd = true,  -- Set to false to disable automatic execution
        override_editorconfig = false, -- Set to true to override settings set by .editorconfig
        filetype_exclude = {  -- A list of filetypes for which the auto command gets disabled
          "netrw",
          "tutor",
        },
        buftype_exclude = {  -- A list of buffer types for which the auto command gets disabled
          "help",
          "nofile",
          "terminal",
          "prompt",
        },
        on_tab_options = { -- A table of vim options when tabs are detected 
          ["expandtab"] = false,
        },
        on_space_options = { -- A table of vim options when spaces are detected 
          ["expandtab"] = true,
          ["tabstop"] = "detected", -- If the option value is 'detected', The value is set to the automatically detected indent size.
          ["softtabstop"] = "detected",
          ["shiftwidth"] = "detected",
        },
    })
    end,
  },
}
