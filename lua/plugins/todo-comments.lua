return {
  -- Highlight todo, notes, etc in comments
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function(_, opts)
      opts.merge_keywords = true
      opts.keywords = {
        C = { icon = " :", color = "#e2ff4f" },
        S = { icon = ">=", color = "#a550fa" },
        N = { icon = " #", color = "#00ffaa" },
        I = { icon = " !", color = "#ff6924" },
      }
    end,
  },
}

-- C: custom
-- S: section
-- N: name
-- I: important

--#00ffaa
--#5afaef
