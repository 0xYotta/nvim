local map = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement number with +/-
map.set("n", "+", "<C-a>")
map.set("n", "-", "<C-x>")

-- select all
map.set("n", "<C-a>", "gg<S-v>G")
