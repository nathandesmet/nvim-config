if vim.g.neovide then

    vim.g.neovide_input_use_logo = 1
    vim.g.neovide_confirm_quit = 1
    vim.g.gui_font_default_size = 13
    vim.g.gui_font_size = vim.g.gui_font_default_size
    vim.g.gui_font_face = "Fira Mono"

    RefreshGuiFont = function()
        vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
    end

    ResizeGuiFont = function(delta)
        vim.g.gui_font_size = vim.g.gui_font_size + delta
        RefreshGuiFont()
    end

    ResetGuiFont = function ()
        vim.g.gui_font_size = vim.g.gui_font_default_size
        RefreshGuiFont()
    end

    ResetGuiFont()

    local opts = { noremap = true, silent = true }
    vim.keymap.set({'n', 'i'}, "<D-=>", function() ResizeGuiFont(1)  end, opts)
    vim.keymap.set({'n', 'i'}, "<D-->", function() ResizeGuiFont(-1) end, opts)
    vim.keymap.set({'n', 'i'}, "<D-0>", function() ResetGuiFont() end, opts)
    vim.keymap.set({'!', 't', 'v'}, '<D-v>', '<C-R>+', opts)
    vim.keymap.set('v', '<D-c>', '"+y', opts)

end
