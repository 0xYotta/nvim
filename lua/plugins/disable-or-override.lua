-- NOTE: Little overrides for the preinstalled plugins
local overrided = {
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}

--NOTE: Disabling plugins
local disabled = {}

return {
  disabled,
  overrided,
}
