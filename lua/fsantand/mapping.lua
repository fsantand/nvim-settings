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

keymap.set("n", "<Left>>", ":echoe 'Use h'<CR>")
keymap.set("n", "<Right>", ":echoe 'Use l'<CR>")
keymap.set("n", "<Up>", ":echoe 'Use k'<CR>")
keymap.set("n", "<Down>",  ":echoe 'Use j'<CR>")

keymap.set("i", "<Left>>", "<ESC>:echoe 'Use h'<CR>")
keymap.set("i", "<Right>", "<ESC>:echoe 'Use l'<CR>")
keymap.set("i", "<Up>", "<ESC>:echoe 'Use k'<CR>")
keymap.set("i", "<Down>",  "<ESC>:echoe 'Use j'<CR>")

