local opt = vim.opt

opt.scrolloff = 7 -- " keep 7 lines above and below the cursor

-- " use bash as vim shell. Fish is our terminal, but it takes more time to start, and make neovim startup longer
opt.shell="/bin/bash"


-- tabs and spaces
opt.tabstop=4
opt.softtabstop=0
opt.shiftwidth=4
opt.expandtab = true

-- search (/)
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- using system clipboard
opt.clipboard="unnamedplus"

-- echo "é" | iconv -f UTF-8 -t UTF-16LE | clip.exe

-- "exclude temp file from autocompletion
opt.wildignore:append("*/tmp/*", "*.so", "*.swp" ,"*.zip", "*.pyc", "*.db", "*.sqlite")

opt.relativenumber = true -- relative numbers
opt.number = true -- line number instead of 0 when using relative numbers éé
opt.mousemodel = "popup" -- " right click doesnt trigger visual mode

opt.mouse = "n"

opt.foldenable = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel=9999

opt.termguicolors = true -- " enable 24bit colors
vim.cmd("colorscheme gruvbox")
