return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },

  -- {
  --   "cordx56/rustowl",
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --
  --     -- Настройка rustowl LSP
  --     lspconfig.rustowl.setup({
  --       trigger = {
  --         hover = false,
  --       },
  --     })
  --
  --     -- Установка keymap для rustowl_cursor
  --     vim.keymap.set("n", "<C-o>", require("rustowl").rustowl_cursor, { noremap = true, silent = true })
  --   end,
  -- },
}
