require("myconfig.remap")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.cursorline=true
vim.opt.mouse = 'a'

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 4

vim.opt.signcolumn = "yes"

-- persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

if vim.fn.has("gui_running") then
  vim.opt.guifont = "SauceCodePro NFM:h11"
end
