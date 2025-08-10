return {
  {
    "catppuccin/nvim",
    opts = {
      flavor = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
      custom_highlights = function(colors)
        return {
          ["@module"] = { fg = colors.blue },
          ["@lsp.type.enumMember"] = { fg = colors.peach },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)

      vim.api.nvim_create_autocmd("Colorscheme", {
        pattern = "catppuccin*",
        callback = function()
          vim.api.nvim_set_hl(0, "CursorLine", { fg = "NONE" })
        end,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
