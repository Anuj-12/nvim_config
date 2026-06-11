require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- TODO: Add auto formating
-- TODO: Indent guides
-- TODO: Consider notification manager

require('lazy').setup({
    require 'plugins.neotree',
    require 'plugins.colortheme',
    require 'plugins.lualine',
    require 'plugins.autopairs',
    require 'plugins.alpha',
    require 'plugins.telescope',
    require 'plugins.noice',
    require 'plugins.lsp',
    require 'plugins.autocomplete',
    require 'plugins.todo-comments',
    require 'plugins.markdown-renderer',
    require 'plugins.bufferline',
    require 'plugins.toggleterm',
})
