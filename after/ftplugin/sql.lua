--Tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Remove problematic SQL ftplugin arrow key mappings
-- See: https://github.com/neovim/neovim/issues/26977
pcall(vim.keymap.del, "i", "<Left>", { buffer = true })
pcall(vim.keymap.del, "i", "<Right>", { buffer = true })
