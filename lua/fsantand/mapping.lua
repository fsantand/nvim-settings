local g = vim.g
local cmd = vim.cmd
local keymap = vim.keymap

-- Mapping
keymap.set("n", "Q", "<nop>")

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

