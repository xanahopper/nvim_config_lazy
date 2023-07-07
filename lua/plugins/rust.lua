return {
  {
    "simrat39/rust-tools.nvim",
    opts = {
      server = {},
    },
    config = true,
    ft = { "rust" },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {},
      tools = {
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
          show_parameter_hints = true,
        },
      },
    },
  },
  {
    "folke/neoconf.nvim",
    opts = {
      import = {
        vscode = true,
      },
    },
    keys = {
      { "<leader>sff", "<cmd>Neoconf<CR>", desc = "Neoconf" },
      { "<leader>sfl", "<cmd>Neoconf local<CR>", desc = "Neoconf local" },
      { "<leader>sfg", "<cmd>Neoconf global<CR>", desc = "Neoconf global" },
    },
  },
}
