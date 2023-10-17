local dap, dapui = require("dap"), require("dapui")

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- TODO: need better keybinds
vim.keymap.set("n", "<leader>dt", ":DapToggleBreakpoint<CR>", {desc = "DAP: Toggle breakpoint"})
vim.keymap.set("n", "<leader>dx", ":DapTerminate<CR>", {desc = "DAP: Terminate"})
vim.keymap.set("n", "<leader>do", ":DapStepOver<CR>", {desc = "DAP: Step Over"})
