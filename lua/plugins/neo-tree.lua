return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    opts = {
      popup_border_style = "rounded",
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          always_show = {
            "node_modules",
            ".gitignore",
          },
        },
        window = {
          position = "float",
        },
      },
    },
  },
}
