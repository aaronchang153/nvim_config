function SetColorscheme(color)
  color = color or "jellybeans-nvim"

  vim.opt.termguicolors = true
  vim.cmd.colorscheme(color)
end

SetColorscheme()
