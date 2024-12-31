-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").setup({
  pickers = {
    colorscheme = {
      enable_preview = true,
    },
  },
})
