return {
  "mistweaverco/kulala.nvim",
  keys = {
    {
      "<leader>rs",
      function()
        require("kulala").run()
      end,
      desc = "Send request",
      ft = "http",
    },
    {
      "<leader>ra",
      function()
        require("kulala").run_all()
      end,
      desc = "Send all requests",
      ft = "http",
    },
    {
      "<leader>ro",
      function()
        require("kulala").open()
      end,
      desc = "Open response",
      ft = "http",
    },
    {
      "<leader>ri",
      function()
        require("kulala").inspect()
      end,
      desc = "Inspect request",
      ft = "http",
    },
    {
      "<leader>rc",
      function()
        require("kulala").copy()
      end,
      desc = "Copy as cURL",
      ft = "http",
    },
    {
      "[r",
      function()
        require("kulala").jump_prev()
      end,
      desc = "Previous request",
      ft = "http",
    },
    {
      "]r",
      function()
        require("kulala").jump_next()
      end,
      desc = "Next request",
      ft = "http",
    },
  },
  ft = { "http", "rest" },
  opts = {
    ui = {
      display_mode = "float",
    },
  },
}
