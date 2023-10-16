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

-- persistent undo
if os.getenv("HOME") then
  vim.opt.undofile = true
  vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

if vim.fn.has("gui_running") then
  vim.opt.guifont = "SauceCodePro NFM:h11"
end
