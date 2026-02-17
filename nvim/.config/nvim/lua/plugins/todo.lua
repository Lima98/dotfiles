return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        vim.keymap.set({'n'}, '<leader>tr', '<CMD>TodoTrouble<CR>', { desc = 'Todo Trouble'}),
        vim.keymap.set({'n'}, '<leader>tq', '<CMD>TodoQuickFix<CR>', { desc = 'Todo Quick Fix'}),
        vim.keymap.set({'n'}, '<leader>tt', '<CMD>TodoTelescope<CR>', { desc = 'Todo Telescope'}),
    },
}
