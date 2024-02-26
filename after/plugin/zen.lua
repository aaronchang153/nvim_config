local zen_mode = require("zen-mode")

local function ToggleZen()
  zen_mode.toggle({
    window = {
      width = 120
    },
  })
end

vim.keymap.set("n", "<leader>z", ToggleZen, {desc = "Toggle Zen Mode"})
