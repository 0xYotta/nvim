return {
  -- add dracula
  { "Mofiqul/dracula.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "maxmx03/fluoromachine.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = false,
        theme = "fluoromachine",
        transparent = true,
      })
    end,
  },
  { "eldritch-theme/eldritch.nvim" },
  { "uloco/bluloco.nvim" },
  { "shaunsingh/moonlight.nvim" },
  {
    "rktjmp/lush.nvim",
    -- if you wish to use your own colorscheme:
    -- { dir = '/absolute/path/to/colorscheme', lazy = true },
  },
  -- Configure LazyVim to load dracula
}
