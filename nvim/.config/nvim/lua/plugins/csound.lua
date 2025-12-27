return {
  'luisjure/csound-vim',
  config  = function()
    vim.keymap.set('n', '<leader>cp', '<CMD>w<CR> <BAR> <CMD>!csound "%"<CR>', {})
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "csd",
      callback = function()
        vim.bo.commentstring = "; %s"
      end,
    })

  end
}
