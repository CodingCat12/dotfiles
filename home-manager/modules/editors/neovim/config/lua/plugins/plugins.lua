return {
  { "folke/tokyonight.nvim", enabled = true },
  { "catppuccin/nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nixd = {},
        gdscript = {},
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nix = { "alejandra" },
      },
    },
  },

  -- Are replaced by Nix packages
  { "williamboman/mason.nvim",           enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  { "jay-babu/mason-nvim-dap.nvim",      enabled = false },
}
