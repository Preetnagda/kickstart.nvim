return {
  'github/copilot.vim',
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },
    },

    separator = '━━',
    auto_fold = true, -- Automatically folds non-assistant messages,
  },
  vim.keymap.set('n', '<leader>cc', '<cmd>CopilotChatToggle<CR>', { desc = 'Open copilot chat window' }),
}
