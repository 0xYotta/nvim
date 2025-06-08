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
