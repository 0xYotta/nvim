return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {
          cmd = { "${HOME}/.zvm/bin/zls" },
        },
      },
    },
  },
}
