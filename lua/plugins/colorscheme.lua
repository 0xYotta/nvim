return {

  {
    "ellisonleao/gruvbox.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
  },

  {
    "eldritch-theme/eldritch.nvim",
    config = function()
      require("eldritch").setup({
        palette = "default",
        terminal_colors = true,
      })
    end,
  },

  {
    "maxmx03/fluoromachine.nvim",
    lazy = false,
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = false,
        theme = "fluoromachine",
        transparent = false,
      })
    end,
  },

  {
    "0xstepit/flow.nvim",
    lazy = false,
    tag = "v2.0.1",
    opts = {
      theme = {
        style = "dark",
        contrast = "default",
        transparent = false,
      },
      colors = {
        mode = "light",
        fluo = "pink",
        custom = {
          saturation = "100",
        },
      },
      ui = {
        borders = "fluo",
        aggressive_spell = true,
      },
      -- Your configuration options here.
    },
  },

  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 999,
    opts = {},
  },

  {
    "cpea2506/one_monokai.nvim",
  },

  { "sekke276/dark_flat.nvim" },

  {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
      style = "deep",
      term_colors = true,
      ending_tildes = true,

      toggle_style_key = "<leader>uu",
      toggle_style_list = { "deep" },
    },
    config = function(_, opts)
      require("onedark").setup(opts)
    end,
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "haize-uwu/sweet.nvim",
    lazy = false,
    priority = 1000,
    name = "sweet",
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "mistweaverco/retro-theme.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
