local trouble = require("trouble")

vim.keymap.set("n", "<leader>d", trouble.toggle, {desc = "Toggle diagnostics"})
