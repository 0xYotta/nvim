-- lua/plugins/go.lua
return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          -- Minimal config - golangci-lint will handle the rest
          settings = {
            gopls = {
              buildFlags = { "-tags=wireinject" },
              analyses = {
                unusedparams = true,
              },
            },
          },
        },
      },
    },
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        go = { "golangcilint" },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },

  -- Go struct tags
  {
    "fatih/vim-go",
    ft = "go",
    build = ":GoUpdateBinaries",
    config = function()
      -- Disable most vim-go features (we use gopls for LSP)
      vim.g.go_code_completion_enabled = 0
      vim.g.go_def_mapping_enabled = 1
      vim.g.go_doc_keywordprg_enabled = 0
      vim.g.go_template_autocreate = 0

      -- Only enable struct tag features
      vim.g.go_addtags_transform = "snakecase"
      vim.g.go_addtags_skip_unexported = 1
    end,
  },
}
