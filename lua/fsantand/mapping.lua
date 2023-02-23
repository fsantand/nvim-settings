local keymap = vim.keymap

-- Mapping
keymap.set("n", "Q", "<nop>")

-- Tabs
keymap.set("n", "<Left>>", "<NOP>")
keymap.set("n", "<Right>", "<NOP>")
keymap.set("n", "<Up>", "<NOP>")
keymap.set("n", "<Down>", "<NOP>")

keymap.set("i", "<Left>>", "<NOP>")
keymap.set("i", "<Right>", "<NOP>")
keymap.set("i", "<Up>", "<NOP>")
keymap.set("i", "<Down>", "<NOP>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("x", "<leader>p", '"_dP')
keymap.set("i", "<leader>y", '"_+y')
keymap.set("v", "<leader>y", '"_+y')
keymap.set("n", "<leader>Y", '"_+Y')

keymap.set("v", "<leader>Y", '"+y')

-- Git
keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>")

-- Move lines
keymap.set("n", "<C-S-j>", ":m .+1<CR>==")
keymap.set("n", "<C-S-k>", ":m .-2<CR>==")
keymap.set("i", "<C-S-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<C-S-k>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<C-S-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-S-k>", ":m '<-2<CR>gv=gv")
