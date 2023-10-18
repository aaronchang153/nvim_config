local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {desc = "Telescope: files"})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {desc = "Telescope: grep"})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {desc = "Telescope: buffers"})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {desc = "Telescope: help_tags"})
vim.keymap.set("n", "<leader>ps", builtin.colorscheme, {desc = "Telescope: colorscheme"})
vim.keymap.set("n", "<leader>pt", builtin.filetypes, {desc = "Telescope: filetypes"})

function HandleCtrlP()
  local path = vim.loop.cwd() .. "/.git"
  local ok, _ = vim.loop.fs_stat(path)
  if ok then
    builtin.git_files()
  else
    builtin.find_files()
  end
end

vim.keymap.set("n", "<C-p>", HandleCtrlP, {desc = "Telescope: git_files"})
