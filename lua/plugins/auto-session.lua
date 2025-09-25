return {
  "rmagatti/auto-session",
  lazy = false,
  config = function()
    local auto_session = require("auto-session")
    --
    auto_session.setup({
      auto_create = true,
      auto_restore_enabled = true,
      auto_session_supress_dirs = { "~/", "~/Downloads", "~/Documents" },
    })
  end,
}
