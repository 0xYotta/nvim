-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer", noremap = true, silent = true })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer", noremap = true, silent = true })

-- NOTE: deleting mappings
local delete = vim.keymap.del
