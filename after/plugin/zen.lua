local zen_mode = require("zen-mode")

vim.keymap.set("n", "<leader>z", zen_mode.toggle, {desc = "Toggle Zen Mode"})
