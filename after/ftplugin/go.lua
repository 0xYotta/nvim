--Tabs
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Struct tag keymaps
local keymap = vim.keymap.set
local opts = { buffer = true, silent = true }

-- Add tags to entire struct or visual selection
keymap("n", "<leader>tj", ":GoAddTags json<CR>", vim.tbl_extend("force", opts, { desc = "Add JSON tags" }))
keymap("v", "<leader>tj", ":GoAddTags json<CR>", vim.tbl_extend("force", opts, { desc = "Add JSON tags" }))
keymap("n", "<leader>tx", ":GoAddTags xml<CR>", vim.tbl_extend("force", opts, { desc = "Add XML tags" }))
keymap("v", "<leader>tx", ":GoAddTags xml<CR>", vim.tbl_extend("force", opts, { desc = "Add XML tags" }))
keymap("n", "<leader>ty", ":GoAddTags yaml<CR>", vim.tbl_extend("force", opts, { desc = "Add YAML tags" }))
keymap("v", "<leader>ty", ":GoAddTags yaml<CR>", vim.tbl_extend("force", opts, { desc = "Add YAML tags" }))
keymap(
  "n",
  "<leader>ta",
  ":GoAddTags json,xml,yaml<CR>",
  vim.tbl_extend("force", opts, { desc = "Add JSON/XML/YAML tags" })
)
keymap(
  "v",
  "<leader>ta",
  ":GoAddTags json,xml,yaml<CR>",
  vim.tbl_extend("force", opts, { desc = "Add JSON/XML/YAML tags" })
)

-- Add tag options to current line/selection (use V to select single field first)
keymap(
  "v",
  "<leader>tjo",
  ":GoAddTags json,omitempty<CR>",
  vim.tbl_extend("force", opts, { desc = "Add JSON with omitempty" })
)
keymap(
  "v",
  "<leader>tjz",
  ":GoAddTags json,omitzero<CR>",
  vim.tbl_extend("force", opts, { desc = "Add JSON with omitzero" })
)

-- Remove tags
keymap("n", "<leader>tr", ":GoRemoveTags<CR>", vim.tbl_extend("force", opts, { desc = "Remove all tags" }))
keymap("v", "<leader>tr", ":GoRemoveTags<CR>", vim.tbl_extend("force", opts, { desc = "Remove tags" }))
