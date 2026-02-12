vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set relativenumber")

vim.g.mapleader = " "

vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.textwidth = 0

vim.keymap.set('n', '<leader>cf', '<Cmd>%y+<CR>', {})
vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>', {})
vim.keymap.set('n', '<leader>e', '<Cmd>lua Snacks.explorer()<CR>', {})

-- Resizing buffers with Ctrl + Arrow keys
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', {})
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', {})
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', {})
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', {})
