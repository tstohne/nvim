return {
  -- LSP / tooling stack
  { "neovim/nvim-lspconfig", enabled = false },
  { "mason-org/mason.nvim", enabled = false },
  { "mason-org/mason-lspconfig.nvim", enabled = false },
  { "stevearc/conform.nvim", enabled = false },
  { "mfussenegger/nvim-lint", enabled = false },

  -- completion and snippets
  { "saghen/blink.cmp", enabled = false },
  { "L3MON4D3/LuaSnip", enabled = false },
  { "rafamadriz/friendly-snippets", enabled = false },

  -- UI extras
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/trouble.nvim", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
  { "nvim-mini/mini.animate", enabled = false },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua", "vim", "vimdoc", "bash", "json", "yaml", "toml",
        "markdown", "markdown_inline", "diff", "gitcommit", "regex",
      },
    },
  },
}
