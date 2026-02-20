vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set relativenumber")
vim.cmd("set number")

vim.g.mapleader = " "

vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.textwidth = 0

-- Keybindings
vim.keymap.set('n', '<leader>cf', '<Cmd>%y+<CR>', {})
vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>', {})
vim.keymap.set('n', '<leader>e', '<Cmd>lua Snacks.explorer()<CR>', {})

-- Resizing buffers with Ctrl + Arrow keys
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', {})
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', {})
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', {})
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', {})
