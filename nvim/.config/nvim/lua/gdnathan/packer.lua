-- to source this file and make packer's command available: `:so`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup({ function(use)
    use 'wbthomason/packer.nvim'

    -- LSP
    -- use
    -- use {
    --     'williamboman/nvim-lsp-installer', -- ONLY FOR LINUX BUILD
    -- {
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    --     }
    -- }
    use 'nvim-lua/lsp-status.nvim'
    use 'sbdchd/neoformat'
    use 'prettier/vim-prettier'
    -- hightlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- completion tools:
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    use 'github/copilot.vim'
    -- use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }

    --themes
    use 'arcticicestudio/nord-vim'
    use 'dkasak/gruvbox'
    use 'dracula/vim'
    use 'EdenEast/nightfox.nvim'

    --debuger
    --use 'puremourning/vimspector' -- require python 3

    --ui
    use 'hoob3rt/lualine.nvim'
    use 'arkav/lualine-lsp-progress'
    use 'airblade/vim-gitgutter' -- +, - and ~ for git diff (added/removed/modified)
    use 'norcalli/nvim-colorizer.lua' -- highlight hexa colors in coresponding color
    use 'psliwka/vim-smoothie' -- nice and smooth scroll
    -- off until whitespace in terminal are not showed
    -- use 'ntpeters/vim-better-whitespace' -- every trailing spaces in red. :stripwhitespaces to del them all
    use 'ryanoasis/vim-devicons' -- icons
    use 'rrethy/vim-illuminate' -- highlight other uses of the word under the cursor
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            { 'MunifTanjim/nui.nvim' }
        }
    }
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.tree-dashboard'.config)
        end
    }

    --telescope
    use { 'nvim-telescope/telescope.nvim', require = 'nvim-lua/plenary.nvim' }
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use 'luc-tielen/telescope_hoogle'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'nvim-telescope/telescope-frecency.nvim'

    -- UX
    use 'b0o/mapx.nvim'
    use 'windwp/nvim-autopairs' -- autaumatically close parenthesis, brackets...
    use 'numToStr/Comment.nvim'
    use({ "JoosepAlviste/nvim-ts-context-commentstring", event = "BufRead" })
    use 'tpope/vim-surround' -- use cs\--' to change \--bite\-- into 'bite', stuff like that
    use 'wesQ3/vim-windowswap' -- swap window <leader>ww to select and swap
    use "akinsho/toggleterm.nvim"
    use "gpanders/editorconfig.nvim" -- handle .editorconfig file
    -- use "editorconfig/editorconfig-vim/issues" -- more complete version (less lightweight)
    use {
        'saecki/crates.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }
    use 'kevinhwang91/nvim-bqf'

    use 'simrat39/rust-tools.nvim'
    -- others
    use 'Nero-F/vim-tek-header'
    -- debug
    use 'dstein64/vim-startuptime'


    -- ideas
    --
    -- basically a tab pane
    -- use 'akinsho/bufferline.nvim'

    --

end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        }
    }
})

