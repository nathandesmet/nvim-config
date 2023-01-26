local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
          ['<c-d>'] = actions.delete_buffer
      },
      i = {
        ['<esc>'] = actions.close,
        ["<C-h>"] = "which_key",
        ['<c-d>'] = actions.delete_buffer
      }
    }
  }
}

telescope.load_extension('ui-select')

local telescopeopts = { noremap = true}

vim.keymap.set('n', '<C-p>', function()
    local git_dir = pcall(builtin.git_files, { use_git_root = false })
    if (not git_dir) then
        builtin.find_files()
    end
end, telescopeopts)

vim.keymap.set('n', '<Leader>pf', builtin.find_files, telescopeopts)
vim.keymap.set('n', '<C-space>', builtin.resume, telescopeopts)
vim.keymap.set('n', '<Leader><leader>', function() builtin.buffers({ sort_lastused = true, ignore_current_buffer = true }) end, telescopeopts)
vim.keymap.set('n', '<Leader>gs', builtin.git_status, telescopeopts)
vim.keymap.set('n', '<Leader>pd', builtin.diagnostics, telescopeopts)
vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep For > ")}) end, telescopeopts)
vim.keymap.set('n', '<leader>pg', builtin.live_grep, telescopeopts)
vim.keymap.set('n', '<leader>pt', function() builtin.grep_string({ search = "TODO" }) end, telescopeopts)

vim.keymap.set("n", "<Leader>gro", function()
    builtin.find_files(themes.get_dropdown {
        previewer = false,
        cwd = '/Users/nathandesmet/code/github.com',
        find_command = {'find', '.', '-type', 'd', '-maxdepth', '2', '-depth', '2' }
    })
end)

vim.keymap.set("n", "<Leader>sro", function()
    builtin.find_files(themes.get_dropdown {
        previewer = false,
        cwd = "/Users/nathandesmet/code/scratch",
        find_command = {"find", ".", "-type", "d", "-maxdepth", "2", "-depth", "2" }
    })
end)


