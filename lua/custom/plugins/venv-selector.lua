-- Python virtual environment selector
-- Allows switching between venvs and automatically tells pyright which to use

---@module 'lazy'
---@type LazySpec
return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
  },
  ft = 'python',
  opts = {
    options = {
      cached_venv_automatic_activation = true,
      activate_venv_in_terminal = true,
      notify_user_on_venv_activation = true,
    },
  },
  keys = {
    { '<leader>cv', '<cmd>VenvSelect<cr>', desc = 'Select Python venv' },
  },
}
