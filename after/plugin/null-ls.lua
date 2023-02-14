local null_ls = require("null-ls")
local b = null_ls.builtins

local sources = {
	-- python
	b.formatting.black.with({ extra_args = { "--fast" } }),
	b.formatting.isort,
	b.diagnostics.flake8,
	-- Golang
	b.formatting.gofmt,
	b.formatting.goimports,
	-- Lua
	b.formatting.stylua,
	b.code_actions.gitsigns,
	b.completion.luasnip,
}

null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
						timeout_ms = 2000,
					})
				end,
			})
		end
	end,
})
