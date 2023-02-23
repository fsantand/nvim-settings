local opt = vim.opt
local opt_s = vim.o

-- Unix-like settings
if vim.loop.os_uname().sysname ~= "Windows_NT" then
	opt_s.directory = "~/.local/share/nvim/swap"
	opt.undodir = os.getenv("HOME") .. "/.vim/undodir/"
end

-- Editor

opt.guicursor = ""
opt.nu = true
opt.relativenumber = true

-- Loc-
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.wrap = false
opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

vim.g.mapleader = " "

vim.cmd("filetype plugin indent off")

-- Block on command mode, | on insert mode
opt.guicursor = "n-v-c:block,i-ci-ve:ver25"
