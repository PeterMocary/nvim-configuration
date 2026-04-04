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
  config = function(_, opts)
    require('nvim-tree').setup(opts)
    vim.api.nvim_set_hl(0, 'NvimTreeFolderName', { fg = '#83a598' })
    vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName', { fg = '#83a598' })
    vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName', { fg = '#83a598' })
    vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon', { fg = '#83a598' })
  end,
  keys = {
    { '\\', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle file explorer' },
    { '<leader>e', '<cmd>NvimTreeFocus<cr>', desc = 'Focus file explorer' },
  },
}
