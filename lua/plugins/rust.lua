return {
  -- {
  --   "simrat39/rust-tools.nvim",
  --   opts = {
  --     autoSetHints = true,
  --     hover_with_actions = true,
  --     inlay_hints = {
  --       show_parameter_hints = true,
  --       auto = true,
  --     },
  --     server = {},
  --   },
  --   config = true,
  --   ft = { "rust" },
  -- },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    opts = {
      server = {
        on_attach = function(_, bufnr)
          vim.lsp.inlay_hint.enable(bufnr, true)
        end,
      },
    },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend("force", {}, opts or {})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {},
      inlay_hints = {
        enabled = true,
      },
      tools = {
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
          show_parameter_hints = true,
          auto = true,
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
