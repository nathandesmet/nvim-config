local status, _ = pcall(require, 'pounce')
if (not status) then return end

vim.keymap.set("n", 'S', "<cmd>Pounce<CR>", {noremap = true, silent = true})
vim.keymap.set("n", 'S', "<cmd>Pounce<CR>", {noremap = true, silent = true})
