local status, lsp = pcall(require, 'lsp-zero')
if (not status) then return end

lsp.preset('recommended')

lsp.ensure_installed({
    'marksman',
    'tsserver',
    'eslint',
    'sumneko_lua',
    'pyright',
})


---@diagnostic disable-next-line: unused-local
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- additions
    vim.keymap.set("n", 'gt', vim.lsp.buf.type_definition, opts);
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, opts);
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, opts);
    vim.keymap.set("n", "<leader>dl", vim.diagnostic.goto_prev, opts);

    local telescope_status, _ = pcall(require, 'telescope')
    if (not telescope_status) then return end
    local telescope_builtin = require('telescope.builtin')

    vim.keymap.set('n', 'gr', telescope_builtin.lsp_references, opts);
    vim.keymap.set('n', 'gd', telescope_builtin.lsp_definitions, opts);
    vim.keymap.set('n', '<Leader>dl', telescope_builtin.diagnostics, opts);
end)

lsp.configure('tsserver', {
    on_attach = function(client, bufnr)
        local s, twoslash_queries = pcall(require, 'twoslash-queries');
        if (not s) then return end

        twoslash_queries.attach(client, bufnr);
    end
})

lsp.nvim_workspace()
lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    float = true
})
