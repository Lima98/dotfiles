vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set relativenumber")

vim.g.mapleader = " "


vim.keymap.set('n', '<leader>cf', '<Cmd>%y+<CR>', {})
vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>', {})
vim.keymap.set('n', '<leader>e', '<Cmd>lua Snacks.explorer()<CR>', {})
