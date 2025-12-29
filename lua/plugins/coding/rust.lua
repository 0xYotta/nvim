return {
  {
    "mrcjkb/rustaceanvim",
    opts = function()
      -- Check if this is an Anchor project
      local is_anchor = vim.fn.filereadable("Anchor.toml") == 1

      return {
        tools = {
          enable_clippy = true,
        },
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                -- Disable allFeatures for Anchor projects (breaks #[program] macro)
                -- Enable for regular Rust projects
                allFeatures = not is_anchor,
                buildScripts = {
                  enable = true,
                },
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
      }
    end,
  },
}
-- return {
--   {
--     "mrcjkb/rustaceanvim",
--     version = "^5", -- Recommended
--     lazy = false, -- This plugin is already lazy
--     ["rust-analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--     },
--   },
--
--
--
--   -- {
--   --   "cordx56/rustowl",
--   --   dependencies = { "neovim/nvim-lspconfig" },
--   --   config = function()
--   --     local lspconfig = require("lspconfig")
--   --
--   --     -- Настройка rustowl LSP
--   --     lspconfig.rustowl.setup({
--   --       trigger = {
--   --         hover = false,
--   --       },
--   --     })
--   --
--   --     -- Установка keymap для rustowl_cursor
--   --     vim.keymap.set("n", "<C-o>", require("rustowl").rustowl_cursor, { noremap = true, silent = true })
--   --   end,
--   -- },
-- }
--
--
