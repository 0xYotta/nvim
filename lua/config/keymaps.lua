-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer", noremap = true, silent = true })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer", noremap = true, silent = true })

-- NOTE: deleting mappings
local delete = vim.keymap.del

-- Could make this buttons for navigating in blink cmp
vim.keymap.set("n", "<PageUp>", "<C-u>", { noremap = true, silent = true })
vim.keymap.set("n", "<PageDown>", "<C-d>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sf", function()
  -- F for "Fixed" string search
  require("telescope.builtin").live_grep({ additional_args = { "-F" } })
end, { desc = "[S]earch [F]ixed String in Files" })

-- Toggle semicolon at end of line
vim.keymap.set("n", ";;", function()
  local line = vim.api.nvim_get_current_line()
  if line:sub(-1) == ";" then
    vim.api.nvim_set_current_line(line:sub(1, -2))
  else
    vim.api.nvim_set_current_line(line .. ";")
  end
end, { noremap = true, silent = true, desc = "Toggle semicolon at end of line" })
