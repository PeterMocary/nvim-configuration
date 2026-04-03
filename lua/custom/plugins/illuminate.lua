-- Better reference highlighting: LSP → treesitter → regex fallback

---@module 'lazy'
---@type LazySpec
return {
  'RRethy/vim-illuminate',
  event = 'BufReadPost',
  opts = {
    delay = 200,
    large_file_cutoff = 2000,
    large_file_overrides = { providers = { 'treesitter', 'regex' } },
  },
  config = function(_, opts)
    require('illuminate').configure(opts)
  end,
}
