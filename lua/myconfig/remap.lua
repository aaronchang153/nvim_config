vim.g.mapleader = " "

-- Find and replace within file
vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>//gcI<Left><Left><Left><Left>", {desc = "Find and replace"})
vim.keymap.set("n", "<leader>e", "yiw:%s/\\<<C-r>0\\>/<C-r>0/gcI<Left><Left><Left><Left>", {desc = "Find and edit"})
vim.keymap.set("x", "<leader>r", "y:%s/\\<<C-r>0\\>//gcI<Left><Left><Left><Left>", {desc = "Find and replace selection"})

-- Move around selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selection down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move selection up"})

-- Buffer manip
vim.keymap.set("n", "<leader>bb", ":ls<CR>:b<Space>", {desc = "Switch buffer"})
vim.keymap.set("n", "<leader>bd", ":ls<CR>:bd<Space>", {desc = "Delete buffer"})
vim.keymap.set("n", "<leader>bn", ":bn<CR>", {desc = "Next buffer"})
vim.keymap.set("n", "<leader>bp", ":bp<CR>", {desc = "Prev buffer"})
