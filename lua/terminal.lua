vim.cmd [[
    if has('nvim')
      hi! TermCursorNC ctermfg=15 guifg=#fdf6e3 ctermbg=14 guibg=#93a1a1 cterm=NONE gui=NONE
      tnoremap <expr> <c-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'

      augroup vimrc_term
        autocmd!
        autocmd WinEnter term://* nohlsearch
        autocmd WinEnter term://* startinsert
        autocmd TermOpen term://* startinsert

        autocmd TermOpen * tnoremap <buffer> <C-w>h <C-\><C-n><C-w>h
        autocmd TermOpen * tnoremap <buffer> <C-w>j <C-\><C-n><C-w>j
        autocmd TermOpen * tnoremap <buffer> <C-w>k <C-\><C-n><C-w>k
        autocmd TermOpen * tnoremap <buffer> <C-w>l <C-\><C-n><C-w>l

        autocmd TermOpen * tnoremap <buffer> <c-w><left> <C-\><C-n>:tabprevious<CR>
        autocmd TermOpen * tnoremap <buffer> <c-w><right> <C-\><C-n>:tabnext<CR>

        autocmd TermOpen * tnoremap <buffer> <c-h> <C-\><C-n>1gt
        autocmd TermOpen * tnoremap <buffer> <c-j> <C-\><C-n>2gt
        autocmd TermOpen * tnoremap <buffer> <c-k> <C-\><C-n>3gt
        autocmd TermOpen * tnoremap <buffer> <c-l> <C-\><C-n>4gt

        autocmd TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
      augroup END
    endif
]]
