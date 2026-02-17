return {
    'martineausimon/nvim-lilypond-suite',
    opts = {
        -- edit config here (see "Customize default settings" in wiki)
        vim.keymap.set('n', '<leader>lc', '<Cmd>LilyCmp<CR>', {desc = 'Lilypond Compile'}),
        vim.keymap.set('n', '<leader>lp', '<Cmd>LilyPlayer<CR>', {desc = 'LilyPlayer'}),
        vim.keymap.set('n', '<leader>lv', '<Cmd>LilyCmp <CR> <BAR> <Cmd> Viewer<CR>', {desc = 'Lilypond viewer'})
    },
}
