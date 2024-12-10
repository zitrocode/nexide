local group = vim.api.nvim_create_augroup("PACKER", { clear = true })

vim.api.nvim_create_autocmd('BufWritePost', {
  group = group,
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile'
})
