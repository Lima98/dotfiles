return { 
    "zbirenbaum/copilot.lua",
    "github/copilot.vim",
    requires = {
        "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    },
    opts = {
        vim.keymap.set('n', '<leader>ce', '<CMD>Copilot enable<CR>', { desc = "Enable Copilot" }),
        vim.keymap.set('n', '<leader>cd', '<CMD>Copilot disable<CR>', { desc = "Disable Copilot" }),
    },
    config = function()
        vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
            expr = true,
            replace_keycodes = false
        })
        vim.g.copilot_no_tab_map = true
    end
}
