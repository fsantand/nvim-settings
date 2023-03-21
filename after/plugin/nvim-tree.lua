local nvim_tree = require("nvim-tree")
local nvim_tree_api = require("nvim-tree.api")
--
-- -- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--
-- -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
--
-- -- empty setup using defaults
nvim_tree.setup({
	update_cwd = true,
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set("n", "<leader>ft", function()
	nvim_tree_api.tree.toggle({ find_file = true, focus = true })
end)
