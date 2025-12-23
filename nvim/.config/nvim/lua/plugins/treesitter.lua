return 
{
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local config = require("nvim-treesitter.config")
    config.setup({
      ensure_installed = {"lua", "typst"},
      highligh = { enable = true },
      indent = { enable = true },
    })
  end
}
