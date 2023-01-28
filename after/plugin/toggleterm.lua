local status, toggleterm = pcall(require, 'toggleterm')
if (not status) then return end

toggleterm.setup()

local Terminal = require('toggleterm.terminal').Terminal

toggleterm.setup {
    open_mapping = [[<C-2>]],
    terminal_mappings = true,
    direction = 'float',
}

local function make_tui_term(name, cmd, binding)
    local term_name = "_lazygit_term_" .. name
    if _G[term_name] ~= nil then
        _G[term_name]:shutdown();
    end

    _G[term_name] = Terminal:new({
        cmd = cmd,
        hidden = true,
        direction="float",
        on_open = function(term)
            pcall(function() vim.api.nvim_buf_del_keymap(term.bufnr, "t", "<esc>") end)
        end,
    })

    local cmd_name = "_lazygit_" .. name
    _G[cmd_name] = function()
        _G[term_name]:toggle()
    end

    vim.api.nvim_set_keymap("n", binding, "<cmd>lua " .. cmd_name .. "()<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("t", binding, "<C-\\><C-n><cmd>lua " .. cmd_name .. "()<CR>", {noremap = true, silent = true})
end

local function update_tuis()
    make_tui_term("lazygit", "lazygit", "<c-3>")
end

update_tuis()
make_tui_term("k9s", "k9s", "<c-4>")
_G._toggleterm_update_tuis = update_tuis

vim.cmd [[ command ToggleTermRefresh :lua _toggleterm_update_tuis()<CR> ]]
