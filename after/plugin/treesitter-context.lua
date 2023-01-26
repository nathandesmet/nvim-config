local status, treesitter_context = pcall(require, 'treesitter-context')
if (not status) then return end

treesitter_context.setup{
    enable = true,
    max_lines = 0,
    trim_scope = 'outer',
    zindex = 20,
    mode = 'cursor',
    patterns = {
        json = {
            'object'
        }
    }
}
