return { 
    "zbirenbaum/copilot.lua",
    "github/copilot.vim",
    requires = {
        "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    },
    config = function()
        vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
            expr = true,
            replace_keycodes = false
        })
        vim.g.copilot_no_tab_map = true
    end
}
