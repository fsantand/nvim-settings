local builtin = require('telescope.builtin')
local telescope = require('telescope')

local fzf_opts = {
    fuzzy = true,
    override_generic_sorter = true,
    override_file_sorter = true,
    case_mode = "smart_case"
}

telescope.setup({
    pickers = {
        lsp_dynamic_workspace_symbols = {
            sorter = telescope.extensions.fzf.native_fzf_sorter(fzf_opts)
        },
    },
    extensions = {
        fzf = fzf_opts
    }
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep)
vim.keymap.set('n', '<C-o>', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<C-M-o>', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>tk', builtin.keymaps, {})

telescope.load_extension('fzf')
