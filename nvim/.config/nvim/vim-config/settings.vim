set shell=/bin/bash

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Fix backspace indent
set backspace=indent,eol,start
"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Enable hidden buffers
set hidden
"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" copy and past between vim and system
set clipboard+=unnamedplus
set nocp

set termguicolors

"set mouse=a " activate the mouse
set tags+=/usr/include/**/tags " include user tags when generating tags
"exclude temp file from autocompletion
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite "
set autoread " edit vim file when modified somewhere else

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
set relativenumber " display line nbr at the left
set number " display line nbr at the left
silent! colorscheme dracula " choose color theme
set mousemodel=popup " right click doesnt trigger visual mode

set completeopt=menu,menuone,noselect

set mouse=n
set mouse-=a
set nofoldenable
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
