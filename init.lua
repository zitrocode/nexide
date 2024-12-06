local load_nexide_modules = {
  'config',
  'plugin-loader',
  'core',
  'lsp',
  'autocmd',
  'commands',
  'keymaps'
}

for _, initializer in ipairs(load_nexide_modules) do
  local init_module = require('nexide.'..initializer)
  init_module.load()
end
