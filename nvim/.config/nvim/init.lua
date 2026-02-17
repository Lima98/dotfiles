-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.opt.splitright = true

local opts = {}

require("vim-options")
require("lazy").setup("plugins")

-- Hightlight on yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking",
    group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch", -- change if you want another highlight group
            -- higroup = "IncSearch", -- change if you want another highlight group NOTE: Default
            timeout = 130,         -- milliseconds
        })
    end,
})

-- Indent folding for python files
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"python", "lua"},
  command = "setlocal foldmethod=indent"
})

