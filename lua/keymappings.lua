vim.keymap.set("n", "<left>", "<c-w><")
vim.keymap.set("n", "<right>", "<c-w>>")
vim.keymap.set("n", "<up>", "<c-w>-")
vim.keymap.set("n", "<down>", "<c-w>+")

vim.keymap.set("n", "<c-w><left>", ":tabprevious<CR>")
vim.keymap.set("n", "<c-w><right>", ":tabnext<CR>")

vim.keymap.set("n", "<D-t>", "<cmd>tabedit %<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "<c-h>", "1gt")
vim.keymap.set("n", "<c-j>", "2gt")
vim.keymap.set("n", "<c-k>", "3gt")
vim.keymap.set("n", "<c-l>", "4gt")

vim.keymap.set("n", "<leader>tn", ":term<esc>")

vim.cmd("command! NvimConfig :e /Users/nathandesmet/.config/nvim/")
vim.cmd("command! W :w")
