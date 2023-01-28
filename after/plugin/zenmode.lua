local status, zen_mode = pcall(require, 'zen-mode');
if (not status) then return end

zen_mode.setup({
    window = {
        width = .60,
        height = .80
    }
})

vim.keymap.set('n', '<leader>zz', zen_mode.toggle);
