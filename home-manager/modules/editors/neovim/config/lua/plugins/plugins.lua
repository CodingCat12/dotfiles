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
        gdscript = {},
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      image = {},
    },
  },

  -- Are replaced by Nix packages
  { "williamboman/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },
}
