local status, nvimtree = pcall(require, 'nvim-tree')
if (not status) then return end

nvimtree.setup({
    actions = {
        open_file = {
            resize_window = false
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    view = {
        adaptive_size = false,
    },
    sync_root_with_cwd = true,
    update_focused_file = { enable = true },
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
})

vim.keymap.set('n', '<c-1>', ':NvimTreeToggle<CR>', { noremap=true })
vim.keymap.set('n', '<Leader>1', ':NvimTreeToggle<CR>', { noremap=true })
vim.keymap.set('n', '<Leader>f1', ':NvimTreeFindFile<CR>', { noremap=true })
vim.keymap.set('n', '<Leader>F1', ':NvimTreeOpen %:p:h<CR>', { noremap=true })
