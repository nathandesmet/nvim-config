vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use('folke/which-key.nvim')
    use('nvim-lualine/lualine.nvim')

    use('windwp/nvim-autopairs')
    use('windwp/nvim-ts-autotag')
    use('lukas-reineke/indent-blankline.nvim')

    use('rlane/pounce.nvim')

    use('kyazdani42/nvim-tree.lua')
    use('kyazdani42/nvim-web-devicons')

    use('folke/zen-mode.nvim')
    use('morhetz/gruvbox')
    use('folke/tokyonight.nvim')
    use('rakr/vim-one')
    use('mbbill/undotree')
    use('tpope/vim-commentary')

    use('machakann/vim-highlightedyank')
    use('lewis6991/gitsigns.nvim')
    use('tpope/vim-fugitive')
    use('tpope/vim-rhubarb')

    use({ "akinsho/toggleterm.nvim", tag = '*' })

    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('nvim-telescope/telescope-ui-select.nvim')
    use('AckslD/nvim-neoclip.lua')

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('nvim-treesitter/nvim-treesitter-context')

    use({
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    })

    use("marilari88/twoslash-queries.nvim")
end)
