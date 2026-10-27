-- lua/plugins/colorscheme.lua
return {
  -- remove the defaults LazyVim ships
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },

  -- zenburn
  {
    "phha/zenburn.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("zenburn").setup()
    end,
  },

  -- tell LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "zenburn" },
  },
}
