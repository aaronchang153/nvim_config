local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})
vim.keymap.set("n", "<leader>ps", builtin.colorscheme, {})
vim.keymap.set("n", "<leader>pt", builtin.filetypes, {})

vim.keymap.set("n", "<C-p>", builtin.git_files, {})
