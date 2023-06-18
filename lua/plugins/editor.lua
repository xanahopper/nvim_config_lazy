return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },
  -- Jump plugin like EasyEmotion
  {
    "phaazon/hop.nvim",
    lazy = true,
    branch = "v2",
    keys = {
      { "<leader>jj", "<cmd>HopWordAC<CR>", desc = "[Hop] Jump after cursor" },
      { "<leader>kk", "<cmd>HopWordBC<CR>", desc = "[Hop] Jump before cursor" },
      { "<leader>jl", "<cmd>HopLineStartAC<CR>", desc = "[Hop] Jump Line Start after cursor" },
      { "<leader>kl", "<cmd>HopLineStartBC<CR>", desc = "[Hop] Jump Line Start before cursor" },
      { "<leader>jL", "<cmd>HopLineAC<CR>", desc = "[Hop] Jump Line after cursor" },
      { "<leader>kL", "<cmd>HopLineBC<CR>", desc = "[Hop] Jump Line before cursor" },
    },
    config = function()
      require("hop").setup()
    end,
  },
  -- Custom monikai theme
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
  },
  -- neo-tree Nerd Font v3 icon patch
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        icon = {
          folder_empty = "󰜌",
          folder_empty_open = "󰜌",
        },
        git_status = {
          symbols = {
            renamed = "󰁕",
            unstaged = "󰄱",
          },
        },
        document_symbols = {
          kinds = {
            File = { icon = "󰈙", hl = "Tag" },
            Namespace = { icon = "󰌗", hl = "Include" },
            Package = { icon = "󰏖", hl = "Label" },
            Class = { icon = "󰌗", hl = "Include" },
            Property = { icon = "󰆧", hl = "@property" },
            Enum = { icon = "󰒻", hl = "@number" },
            Function = { icon = "󰊕", hl = "Function" },
            String = { icon = "󰀬", hl = "String" },
            Number = { icon = "󰎠", hl = "Number" },
            Array = { icon = "󰅪", hl = "Type" },
            Object = { icon = "󰅩", hl = "Type" },
            Key = { icon = "󰌋", hl = "" },
            Struct = { icon = "󰌗", hl = "Type" },
            Operator = { icon = "󰆕", hl = "Operator" },
            TypeParameter = { icon = "󰊄", hl = "Type" },
            StaticMethod = { icon = "󰠄 ", hl = "Function" },
          },
        },
        -- Add this section only if you've configured source selector.
        source_selector = {
          sources = {
            { source = "filesystem", display_name = " 󰉓 Files " },
            { source = "git_status", display_name = " 󰊢 Git " },
          },
        },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        completion = {
          border = "rounded",
        },
        documentation = {
          border = "rounded",
        },
      },
    },
  },
}
