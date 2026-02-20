return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "tinymist",
                    "pyright",
                    "codebook",
                    "harper-ls",
                }
            })

            vim.keymap.set('n', '<leader>rr', '<cmd>!ruby "%"<CR>', {})
            vim.keymap.set('n', '<leader>rp', '<cmd>!python3 "%"<CR>', {})
        end
    },
    {
        "Neovim/nvim-lspconfig",
        config = function()
            -- vim.lsp.enable("lua_ls") NOTE: These don't seem to be neccessary...
            -- vim.lsp.enable("pyright")
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Actions'})
        end
    }
}
