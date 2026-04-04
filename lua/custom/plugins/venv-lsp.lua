-- Python virtual environment manager
-- Hooks into LSP before_init to set the correct Python path before basedpyright starts

---@module 'lazy'
---@type LazySpec
return {
  'jglasovic/venv-lsp.nvim',
  ft = 'python',
  config = function()
    require('venv-lsp').setup()
  end,
}
