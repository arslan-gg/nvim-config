vim.opt.colorcolumn = "80"
vim.api.nvim_exec ('language en_US', true)
vim.wo.relativenumber = true
vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.g.python_host_prog = '~/.pyenv/shims/python'
vim.g.python3_host_prog = '~/.pyenv/shims/python3'

local enable_providers = {
  "python3_provider",
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end
