return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "mupdf"
    vim.keymap.set('n', '<leader>li', '<plug>(vimtex-info)', {})
    vim.keymap.set('n', '<leader>lI', '<plug>(vimtex-info-full)', {})
    vim.keymap.set('n', '<leader>lt', '<plug>(vimtex-toc-open)', {})
    vim.keymap.set('n', '<leader>lT', '<plug>(vimtex-toc-toggle)', {})
    vim.keymap.set('n', '<leader>lq', '<plug>(vimtex-log)', {})
    vim.keymap.set('n', '<leader>lv', '<plug>(vimtex-view)', {})
    vim.keymap.set('n', '<leader>lr', '<plug>(vimtex-reverse-search)', {})
    vim.keymap.set('n', '<leader>ll', '<plug>(vimtex-compile)', {})
    vim.keymap.set('n', '<leader>lS', '<plug>(vimtex-compile-ss)', {})
    vim.keymap.set('n', '<leader>lk', '<plug>(vimtex-stop)', {})
    vim.keymap.set('n', '<leader>lK', '<plug>(vimtex-stop-all)', {})
    vim.keymap.set('n', '<leader>le', '<plug>(vimtex-errors)', {})
    vim.keymap.set('n', '<leader>lo', '<plug>(vimtex-compile-output)', {})
    vim.keymap.set('n', '<leader>lG', '<plug>(vimtex-status-all)', {})
    vim.keymap.set('n', '<leader>lC', '<plug>(vimtex-clean)', {})
    vim.keymap.set('n', '<leader>lm', '<plug>(vimtex-imaps-list)', {})
    vim.keymap.set('n', '<leader>lx', '<plug>(vimtex-reload)', {})
    vim.keymap.set('n', '<leader>lX', '<plug>(vimtex-reload-state)', {})
    vim.keymap.set('n', '<leader>ls', '<plug>(vimtex-toggle-main)', {})
    vim.keymap.set('n', '<leader>la', '<plug>(vimtex-context-menu)', {})
    vim.keymap.set({'n', 'x'}, '<leader>lL', '<plug>(vimtex-compile-selected)', {})
  end
}
