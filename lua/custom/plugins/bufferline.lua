-- Buffer tabs

---@module 'lazy'
---@type LazySpec
return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  event = 'VimEnter',
  opts = {
    options = {
      always_show_bufferline = true,
      diagnostics = 'nvim_lsp',
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Explorer',
          highlight = 'Directory',
          separator = true,
        },
      },
    },
  },
  keys = {
    { '<Tab>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next buffer' },
    { '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev buffer' },
    {
      '<leader>x',
      function()
        local buf = vim.api.nvim_get_current_buf()
        local bufs = vim.fn.getbufinfo { buflisted = 1 }
        if #bufs > 1 then
          vim.cmd 'BufferLineCyclePrev'
        end
        vim.api.nvim_buf_delete(buf, { force = false })
      end,
      desc = 'Close buffer',
    },
  },
}
