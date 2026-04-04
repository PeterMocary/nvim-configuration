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
            local clients = vim.lsp.get_clients { name = 'basedpyright', bufnr = 0 }
            if #clients > 0 then
              local python = clients[1].config.settings
                and clients[1].config.settings.python
                and clients[1].config.settings.python.pythonPath
              if python then
                return '(' .. vim.fn.fnamemodify(vim.fn.fnamemodify(python, ':h:h'), ':t') .. ')'
              end
            end
            return ''
          end,
          cond = function() return vim.bo.filetype == 'python' end,
        },
        'encoding',
        'filetype',
      },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
