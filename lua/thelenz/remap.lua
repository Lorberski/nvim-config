vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- yank and past to/from system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>p", "\"+p")

-- adds mew line and stays in normal mode
vim.keymap.set('n', '<leader>o', ':put _<CR>')
vim.keymap.set('n', '<leader>O', ':put! _<CR>')

--make file executable 
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', {silent = true})
