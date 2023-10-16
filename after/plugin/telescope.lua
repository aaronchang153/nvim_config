local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {desc = "Telescope: files"})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {desc = "Telescope: grep"})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {desc = "Telescope: buffers"})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {desc = "Telescope: help_tags"})
vim.keymap.set("n", "<leader>ps", builtin.colorscheme, {desc = "Telescope: colorscheme"})
vim.keymap.set("n", "<leader>pt", builtin.filetypes, {desc = "Telescope: filetypes"})

vim.keymap.set("n", "<C-p>", builtin.git_files, {desc = "Telescope: git_files"})
