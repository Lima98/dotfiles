return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  build = "make tiktoken",
  opts = {
    -- See Configuration section for options
    model = 'gpt-4.1',           -- AI model to use
    temperature = 0.2,           -- Lower = focused, higher = creative
    window = {
      layout = 'vertical',       -- 'vertical', 'horizontal', 'float'
      width = 0.2,              -- 30% of screen width
    },
    auto_insert_mode = true,     -- Enter insert mode when opening
  },
  config = function()
    vim.keymap.set('n', '<leader>cc', '<Cmd>CopilotChatToggle<CR>', {})
    vim.keymap.set('n', '<leader>cr', '<Cmd>CopilotChatReset<CR>', {})
  end
}
