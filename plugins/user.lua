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
  { "sainnhe/gruvbox-material" },
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require("vscode").setup {
        italic_comments = true,
      }
    end,
  },
  {
    "TimUntersberger/neogit",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    dependencies = {
      "sindrets/diffview.nvim",
    },
    config = function()
      require("neogit").setup {
        integrations = {
          diffview = true,
        },
      }
    end,
  },
  {
    "github/copilot.vim",
    lazy = false
  },
  { 
    "xiyaowong/transparent.nvim",
    lazy = false,
  },
  { "nyoom-engineering/oxocarbon.nvim" }
}
