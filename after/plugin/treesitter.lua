local status, treesitter = pcall(require,  'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
  ensure_installed = { "query", "rust", "typescript", "tsx", "json", "yaml", "vim", "lua" },
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"},
  },
  autotag = {
    enable = true,
  },
}
