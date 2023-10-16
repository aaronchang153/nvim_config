vim.g.mapleader = " "

-- Find and replace within file
vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>//gcI<Left><Left><Left><Left>")
vim.keymap.set("n", "<leader>e", "yiw:%s/\\<<C-r>0\\>/<C-r>0/gcI<Left><Left><Left><Left>")
vim.keymap.set("x", "<leader>r", "y:%s/\\<<C-r>0\\>//gcI<Left><Left><Left><Left>")

-- Move around selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Buffer manip
vim.keymap.set("n", "<leader>bb", ":ls<CR>:b<Space>")
vim.keymap.set("n", "<leader>bd", ":ls<CR>:bd<Space>")
vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")
