vim.api.nvim_create_augroup("Format on save", { clear = false })
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format {
            filter = function()
                return "null-ls"
            end,
        }
    end,
    group = "Format on save",
})
