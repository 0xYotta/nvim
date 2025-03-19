vim.opt.termguicolors = true

local g = vim.g

return {

  {
    "ellisonleao/gruvbox.nvim",
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

  { "sekke276/dark_flat.nvim" },

  { "haize-uwu/sweet.nvim", lazy = false, priority = 1000, name = "sweet" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          italic = false,
        },
      })
    end,
  },
  { "mistweaverco/retro-theme.nvim" },
  {
    "Sly-Harvey/radium.nvim",
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    config = function()
      g.sonokai_style = "andromeda"
      g.sonokai_menu_selection_background = "red"
      g.sonokai_diagnostic_virtual_text = "colored"
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    config = function()
      g.everforest_background = "hard"
      g.everforest_ui_contrast = "high"
      g.everforest_diagnostic_virtual_text = "colored"
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    config = function()
      g.gruvbox_material_background = "hard"
      g.gruvbox_material_foreground = "mix"
      g.gruvbox_material_ui_contrast = "low"
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
