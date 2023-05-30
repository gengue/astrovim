return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    opts = {
      open_mapping = [[<c-\>]],
    },
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        term_colors = false,

        integrations = {
          treesitter = true,
          nvimtree = false,
          ts_rainbow = false,
          aerial = true,
          dap = { enabled = true, enable_ui = true },
          mason = true,
          neotree = true,
          notify = true,
          semantic_tokens = true,
          symbols_outline = true,
          telescope = true,
          which_key = true,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      }
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("chatgpt").setup {
        keymaps = {
          submit = "<C-s>",
        },
      }
    end,
  },
  {
    "Equilibris/nx.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function() require("nx").setup {} end,
  },
  {
    "mg979/vim-visual-multi",
  },
}
