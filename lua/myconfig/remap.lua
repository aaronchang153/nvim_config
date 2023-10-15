-- Find and replace within file
vim.keymap.set("n", "<Leader>r", ":%s/\\<<C-r><C-w>\\>//gcI<Left><Left><Left><Left>")
vim.keymap.set("n", "<Leader>e", "yiw:%s/\\<<C-r>0\\>/<C-r>0/gcI<Left><Left><Left><Left>")
vim.keymap.set("x", "<Leader>r", "y:%s/\\<<C-r>0\\>//gcI<Left><Left><Left><Left>")

-- Move around selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
