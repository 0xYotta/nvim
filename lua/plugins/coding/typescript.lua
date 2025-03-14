return {

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },

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
}
