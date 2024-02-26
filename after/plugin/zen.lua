local zen_mode = require("zen-mode")

local function ToggleZen()
  zen_mode.toggle({
    window = {
      width = 120
    },
    on_open = function(_)
      vim.cmd("Barbecue hide")
    end,
    on_close = function()
      vim.cmd("Barbecue show")
    end,
  })
end

vim.keymap.set("n", "<leader>z", ToggleZen, {desc = "Toggle Zen Mode"})
