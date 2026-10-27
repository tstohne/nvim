# Nvim (LazVim)
An optimized LazyVim installation with Zenburn theme.

Disabled_plugins:

-- lua/config/lazy.lua, inside require("lazy").setup({ ... })
performance = {
  rtp = {
    disabled_plugins = {
      "gzip", "tarPlugin", "tohtml", "tutor", "zipPlugin", "rplugin",
    },
  },
},

Removal of the defaults LazyVim colorschemes: tokyonight and catppuccin.

Removal of LSP/tooling stack and optimization of treesitter:

~/.config/nvim/lua/plugins/slim.lua
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

Options:

-- lua/config/options.lua
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300
vim.opt.synmaxcol = 240
vim.opt.splitkeep = "screen"
