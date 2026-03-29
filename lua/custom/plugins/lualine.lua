-- Statusline

---@module 'lazy'
---@type LazySpec
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'gruvbox',
      component_separators = { left = '|', right = '|' },
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = {
        {
          function()
            local venv = require('venv-selector').venv()
            if venv then
              return '(' .. vim.fn.fnamemodify(venv, ':t') .. ')'
            end
            return ''
          end,
          cond = function()
            return package.loaded['venv-selector'] ~= nil and vim.bo.filetype == 'python'
          end,
        },
        'encoding',
        'filetype',
      },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
