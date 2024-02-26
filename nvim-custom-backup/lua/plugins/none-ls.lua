return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					--null_ls.builtins.diagnostics.clang_check,
					--EXAMPLES
					--null_ls.builtins.formatting.<LSP/FORMATTER>,
					--null_ls.builtins.diagnostics.<LSP/FORMATTER>,
				},
			})
		end,
	},
	--{
	--  "lukas-reneke/lsp-format.nvim",
	--  lazy=false,
	--},
}
