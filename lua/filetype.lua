vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = 'Directory.Build.targets',
    callback = function()
        vim.api.nvim_cmd({ cmd = 'setf', args = { 'xml' } }, {})
    end
})
