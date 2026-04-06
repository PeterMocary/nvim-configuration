-- Git diff viewer and merge conflict resolution

---@module 'lazy'
---@type LazySpec
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewFileHistory', 'DiffviewMergeToolOpen' },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Git diff view' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Git file history' },
    { '<leader>gm', '<cmd>DiffviewMergeToolOpen<cr>', desc = 'Git merge tool' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = 'Git diff close' },
  },
  opts = {
    enhanced_diff_hl = true,
  },
}
