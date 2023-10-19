local navbuddy = require("nvim-navbuddy")

navbuddy.setup {
  lsp = {
    auto_attach = true,
    preference = nil,
  },
}

vim.keymap.set("n", "<leader>n", navbuddy.open, {desc = "Navbuddy"})
