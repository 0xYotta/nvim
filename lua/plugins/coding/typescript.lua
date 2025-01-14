return {
  -- NOTE: Autoclosing tags
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    event = "InsertEnter",
    config = function(_, _)
      local opts = {
        filetypes = { "html", "javascript", "javascriptreact", "typescriptreact", "vue", "svelte", "xml" },
      }
      require("nvim-ts-autotag").setup(opts)
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },

  --NOTE: Typescript
  {
    "pmizio/typescript-tools.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = function()
      require("typescript-tools").setup({
        settings = {
          jsx_close_tag = {
            enable = true,
            filetypes = { "javascriptreact", "typescriptreact" },
          },
          tsserver_file_preferences = {
            quotePreference = "single",
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,

            includeInlayVariableTypeHints = true,
            includeInlayVariableTypeHintsWhenTypeMatchesName = true,

            includeInlayFunctionLikeReturnTypeHints = true,
          },
        },
      })
    end,
  },
}
