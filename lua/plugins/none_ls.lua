return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
    config = function()
        local null_ls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

        local function format_with_null_ls(bufnr)
            vim.lsp.buf.format({
                bufnr = bufnr or vim.api.nvim_get_current_buf(),
                async = false,
                filter = function(client)
                    return client.name == "null-ls"
                end,
            })
        end

        null_ls.setup({
            sources = {
                require("none-ls.diagnostics.ruff"),
                null_ls.builtins.formatting.stylua.with({
                    extra_args = { "--indent-type", "Spaces", "--indent-width", "4" },
                }),
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.clang_format.with({
                    extra_args = { "--style", "{IndentWidth:4,UseTab:Never}" },
                }),
            },

            on_attach = function(client, bufnr)
                if client.name ~= "null-ls" then
                    return
                end

                vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                vim.api.nvim_create_autocmd("BufWritePre", {
                    group = augroup,
                    buffer = bufnr,
                    callback = function()
                        format_with_null_ls(bufnr)
                    end,
                })
            end,
        })

        vim.keymap.set("n", "<leader>f", function()
            format_with_null_ls()
        end)
    end,
}
