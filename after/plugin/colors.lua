function SetColorscheme(color)
  color = color or "kanagawa-wave"

  vim.opt.termguicolors = true
  vim.cmd.colorscheme(color)
end

SetColorscheme()
