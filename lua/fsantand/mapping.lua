local keymap = vim.keymap

-- Mapping
keymap.set("n", "Q", "<nop>")

-- Tabs
keymap.set("n", "<Left>>", ":echoe 'Use Use h, you dumbfuck!'<CR>")
keymap.set("n", "<Right>", ":echoe 'Use Use l, you dumbfuck!'<CR>")
keymap.set("n", "<Up>", ":echoe 'Use Use k, you dumbfuck!'<CR>")
keymap.set("n", "<Down>",  ":echoe 'Use Use j, you dumbfuck!'<CR>")

keymap.set("i", "<Left>>", "<ESC>:echoe 'Use Use h, you dumbfuck!'<CR>")
keymap.set("i", "<Right>", "<ESC>:echoe 'Use Use l, you dumbfuck!'<CR>")
keymap.set("i", "<Up>", "<ESC>:echoe 'Use Use k, you dumbfuck!'<CR>")
keymap.set("i", "<Down>",  "<ESC>:echoe 'Use Use j, you dumbfuck!'<CR>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("x", "<leader>p", "\"_dP")
keymap.set("i", "<leader>y", "\"_+y")
keymap.set("v", "<leader>y", "\"_+y")
keymap.set("n", "<leader>Y", "\"_+Y")

keymap.set("v", "<leader>Y", "\"+y")
