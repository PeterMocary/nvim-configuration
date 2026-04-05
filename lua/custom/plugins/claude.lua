-- Claude Code integration via WebSocket protocol
-- Gives Claude real-time access to editor state (open files, selections, diffs)

---@module 'lazy'
---@type LazySpec
return {
  'coder/claudecode.nvim',
  dependencies = { 'folke/snacks.nvim' },
  opts = {
    terminal = {
      split_side = 'right',
      split_width_percentage = 0.30,
    },
    diff_opts = {
      keep_terminal_focus = false,
    },
  },
  keys = {
    { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
    { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
    { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send selection to Claude' },
    { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add buffer to Claude' },
  },
}
