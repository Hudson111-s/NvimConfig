return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
    config = function()
        local null_ls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

        null_ls.setup({
            sources = {
                require("none-ls.diagnostics.ruff"),

                null_ls.builtins.formatting.stylua,

                null_ls.builtins.formatting.black,

                null_ls.builtins.formatting.clang_format,
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr, async = false })
                        end,
                    })
                end
            end,
        })
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
    end,
}
