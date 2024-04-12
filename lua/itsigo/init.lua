require("itsigo.remap")
require("itsigo.set")
require("itsigo.lazy")

local autocmd = vim.api.nvim_create_autocmd

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd({"BufWritePre"}, {
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
    callback = function (e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    end
})
