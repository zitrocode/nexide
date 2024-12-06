local M = {}

M.ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

M.load = function ()
  local packer_bootstrap = M.ensure_packer()

  return require('packer').startup(function(use)
    local plugins = require('nexide.plugins')
    for _, plugin in ipairs(plugins) do
      use(plugin)
    end

    if packer_bootstrap then
      require('packer').sync()
    end
  end)
end


return M
