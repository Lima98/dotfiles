return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',

  opts = {
    -- edit config here (see "Customize default settings" in wiki)
      vim.keymap.set('n', '<leader>tp', '<Cmd>TypstPreview<CR>', {}),
  },
}
