-- File explorer

---@module 'lazy'
---@type LazySpec
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sort = { sorter = 'case_sensitive' },
    view = { width = 30 },
    renderer = {
      group_empty = true,
      highlight_git = true,
    },
    filters = { dotfiles = false },
    git = { enable = true },
    actions = {
      open_file = {
        quit_on_open = false,
        window_picker = { enable = true },
      },
    },
  },
  keys = {
    { '\\', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle file explorer' },
    { '<leader>e', '<cmd>NvimTreeFocus<cr>', desc = 'Focus file explorer' },
  },
}
