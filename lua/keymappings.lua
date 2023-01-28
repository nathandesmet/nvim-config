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

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- [R]eplace [W]ord
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- [B]uffer [D]iff
vim.keymap.set("n", "<leader>bd", [[:w !diff % -<cr>]])

vim.cmd("command! NvimConfig :e /Users/nathandesmet/.config/nvim/")
vim.cmd("command! W :w")
