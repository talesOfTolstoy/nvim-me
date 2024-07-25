-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        --or				 , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }

    }

    use 'lervag/vimtex'

    use "rebelot/kanagawa.nvim"
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim",        -- Optional
            "nvim-telescope/telescope.nvim" -- Optional
        }
    }

--    use {
--        "startup-nvim/startup.nvim",
--        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
--        config = function()
--            require("startup").setup(require("inside.startup_nvim"))
--        end
--    }

--    use({
--        'sainnhe/everforest',
--        as = 'everforest',
--        config = function()
--            vim.cmd('colorscheme everforest')
--        end
--    })
--

    use {
        "dzfrias/arena.nvim",
        config = function()
            require("arena").setup()
        end
    }

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use 'nvim-tree/nvim-web-devicons'

    --    use {
    --        'nvim-tree/nvim-tree.lua',
    --        requires = {
    --            'nvim-tree/nvim-web-devicons', -- optional
    --        },
    --        config = function()
    --            require("nvim-tree").setup {}
    --        end
    --    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    --    use {
    --        'nvim-treesitter/nvim-treesitter',
    --        run = function()
    --            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    --            ts_update()
    --        end,
    --    }
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    --    use('neomake/neomake')
    use('daeyun/vim-matlab')
    use('eandrju/cellular-automaton.nvim')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('nvim-lualine/lualine.nvim')

    use({
        "giusgad/pets.nvim",
        requires = {
            "giusgad/hologram.nvim",
            "MunifTanjim/nui.nvim",
        }
    })


    -- Lua
    use ({'sidebar-nvim/sidebar.nvim',
        requires='nvim-tree/nvim-web-devicons'})

    use {'anuvyklack/middleclass'}
    use {'anuvyklack/animation.nvim', 
        requires = 'anuvyklack/middleclass'
    }
    use { "anuvyklack/windows.nvim",
        requires = {
            "anuvyklack/middleclass",
            "anuvyklack/animation.nvim"
        },
        config = function()
            vim.o.winwidth = 13
            vim.o.winminwidth = 13
            vim.o.equalalways = false
            require('windows').setup()
        end
    }
    use 'dhananjaylatkar/cscope_maps.nvim' -- cscope keymaps


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }

    }

--    use({
--        "andrewferrier/wrapping.nvim",
--        config = function()
--            require("wrapping").setup()
--        end,
--    })

end)

