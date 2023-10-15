-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("n", "<leader>pe", vim.cmd.NvimTreeToggle)

require("nvim-tree").setup({
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = false,
        modified = true,
        diagnostics = false,
        bookmarks = false,
      },
      glyphs = {
        folder = {
          arrow_closed = "⏵",
          arrow_open = "⏷",
        },
        --git = {
        --  unstaged = "✗",
        --  staged = "✓",
        --  unmerged = "⌥",
        --  renamed = "➜",
        --  untracked = "★",
        --  deleted = "⊖",
        --  ignored = "◌",
        --},
      },
    },
  },
})
