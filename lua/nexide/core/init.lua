local M = {}

M.load = function ()
  require('nexide.core.mason').setup()
  require('nexide.core.cmp').setup()
  require('nexide.core.lspkind').setup()
  require('nexide.core.treesitter').setup()
  require('nexide.core.gitsigns').setup()
  require('nexide.core.autopairs').setup()
  require('nexide.core.autotag').setup()
  require('nexide.core.comments').setup()
  require('nexide.core.colorizer').setup()
  require('nexide.core.lualine')
  require('nexide.core.tree').setup()
end

return M
