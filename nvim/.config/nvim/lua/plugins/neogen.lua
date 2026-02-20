return {
  "danymat/neogen",
  config = true,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*" 
  opts = {
    vim.keymap.set('n', '<leader>Gd', function() require('neogen').generate() end, { desc = "Generate Neogen Docstring" })
  }
}
