local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    -- Markdown
    "marksman",
    -- lua stuff
    "sumneko_lua",
    -- python
    "pyright",
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace({
    mapping = cmp_mappings
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-H>", function() vim.lsp.buf.signature_help() end, opts)

    require("cmp").setup({
        window = {
            completion = {
                winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                col_offset = -3,
                side_padding = 0,
            },
        },
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                local strings = vim.split(kind.kind, "%s", { trimempty = true })
                kind.kind = " " .. (strings[1] or "") .. " "
                kind.menu = "    (" .. (strings[2] or "") .. ")"

                return kind
            end,
        },
    })
end)

lsp.setup()
