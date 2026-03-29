-- Status column: controls sign column, line numbers and fold column layout

---@module 'lazy'
---@type LazySpec
return {
  'luukvbaal/statuscol.nvim',
  event = 'VimEnter',
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true, -- right-align relative line numbers
      segments = {
        -- Fold indicators
        { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
        -- All signs: diagnostics, git, DAP
        {
          sign = { name = { '.*' }, namespace = { '.*' }, maxwidth = 1, colwidth = 1, auto = true },
          click = 'v:lua.ScSa',
        },
        -- Line numbers
        { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
      },
    }
  end,
}
