-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("n", "<leader>pe", vim.cmd.NvimTreeToggle, {desc = "Toggle NvimTree"})

require("nvim-tree").setup({
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
        diagnostics = false,
        bookmarks = false,
      },
    },
  },
})
