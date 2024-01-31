local neogit = require('neogit')

local function open_neogit()
  neogit.open({ kind="auto" })
end

vim.keymap.set("n", "<leader>g", open_neogit, {desc = "Open Neogit"})
