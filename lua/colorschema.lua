function ThemeDark()
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
end

function ThemeDark2()
    vim.o.background = "dark"
    vim.cmd.colorscheme("tokyonight")
end

function ThemeLight()
    vim.cmd.colorscheme("one")
    vim.o.background = "light"
end

ThemeDark2()

vim.keymap.set("n", "<leader>tl", ThemeLight)
vim.keymap.set("n", "<leader>td", ThemeDark)
