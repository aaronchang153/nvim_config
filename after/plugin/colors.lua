function SetColorscheme(color)
  color = color or "catppuccin-mocha"

  vim.opt.termguicolors = true
  vim.cmd.colorscheme(color)
end

SetColorscheme()
