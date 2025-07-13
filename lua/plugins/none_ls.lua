return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				require("none-ls.diagnostics.ruff"),

				null_ls.builtins.formatting.stylua,

				null_ls.builtins.formatting.black,

				null_ls.builtins.formatting.clang_format,
			},
		})
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
