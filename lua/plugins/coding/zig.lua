return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {
          cmd = { "${HOME}/.zig/zls" },
        },
      },
    },
  },
}
