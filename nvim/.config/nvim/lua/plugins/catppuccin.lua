return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.g.catppuccin_flavour = "macchiato"
    vim.cmd.colorscheme "catppuccin"
  end
}
