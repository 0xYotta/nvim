local map = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement number with +/-
map.set("n", "+", "<C-a>")
map.set("n", "-", "<C-x>")

-- select all
map.set("n", "<C-a>", "gg<S-v>G")

-- NOTE: TELESCOPE
map.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })

-- NOTE: TABS
map.set("n", "<Tab>", ":bnext<CR>", opts)
map.set("n", "<S-Tab>", ":bprevious<CR>", opts)
-- map.set("n", "<leader>x", ":Bdelete!<CR>", opts)  WARN: already existed: leader b d
--
