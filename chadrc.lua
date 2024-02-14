---@type ChadrcConfig
local M = {}

local disabled_plugins = require("plugins.configs.lazy_nvim")
  .performance
  .rtp
  .disabled_plugins

M.ui = {
  theme = 'catppuccin',
}
M.plugins = "custom.plugins"

M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = vim.tbl_filter(function(x)
        return x ~= "rplugin"
      end, disabled_plugins),
    },
  },
}

M.mappings = require "custom.mappings"

return M
