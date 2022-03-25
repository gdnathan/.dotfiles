vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    local use = require('packer').use

    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer' -- ONLY FOR LINUX BUILD
    use 'nvim-lua/lsp-status.nvim'
    use 'sbdchd/neoformat'
    use 'prettier/vim-prettier'
    -- hightlighting
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

   -- completion tools:
   use 'hrsh7th/nvim-cmp'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-vsnip'
   use 'hrsh7th/vim-vsnip'
   use 'rafamadriz/friendly-snippets'
   use 'github/copilot.vim'
   use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

    --themes
    use 'arcticicestudio/nord-vim'
    use 'dkasak/gruvbox'
    use 'dracula/vim'

    --DEBUGER
    --use 'puremourning/vimspector' -- require python 3

    --UI
    use 'travitch/hasksyn' -- syntax hightlighting for haskell
    use 'hoob3rt/lualine.nvim'
    use 'airblade/vim-gitgutter' -- +, - and ~ for git diff (added/removed/modified)
    use 'norcalli/nvim-colorizer.lua' -- highlight hexa colors in coresponding color
    use 'psliwka/vim-smoothie' -- nice and smooth scroll
    use 'ntpeters/vim-better-whitespace' -- every trailing spaces in RED. :StripWhitespaces to del them all
    use 'ryanoasis/vim-devicons' -- icons
    use 'RRethy/vim-illuminate' -- highlight other uses of the word under the cursor
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    --telescope
    use {'nvim-telescope/telescope.nvim', require = {'nvim-lua/plenary.nvim'}}
    use 'nvim-lua/plenary.nvim'
    use 'luc-tielen/telescope_hoogle'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'nvim-telescope/telescope-frecency.nvim'

    -- UX
    use 'tpope/vim-fugitive' -- git integration
    -- use "kdheepak/lazygit.nvim"
    use 'b0o/mapx.nvim'
    use 'windwp/nvim-autopairs' -- autaumatically close parenthesis, brackets...
    use 'numToStr/Comment.nvim'
    use({ "JoosepAlviste/nvim-ts-context-commentstring", event = "BufRead" })
    use 'tpope/vim-surround' -- use cs\--' to change \--bite\-- into 'bite', stuff like that
    use 'wesQ3/vim-windowswap' -- swap window <leader>ww to select and swap
    use "akinsho/toggleterm.nvim"

    -- others
   use 'Nero-F/vim-tek-header'

end)
