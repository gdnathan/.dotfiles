local nnoremap = require'mapx'.nnoremap
local xnoremap = require'mapx'.xnoremap

local map = vim.api.nvim_set_keymap
-- local silent = require('mapx').silent
-- :nnoremap <silent> <leader>f m`zcVzCzo``

vim.g.mapleader = ','


nnoremap ("f<cr>" , ":Telescope<cr>")
nnoremap ("ff" ,":lua require('telescope.builtin').find_files()<cr>")
nnoremap ("fg" ,":lua require('telescope.builtin').live_grep()<cr>")
nnoremap ("fd" ,":lua require('telescope.builtin').diagnostics()<cr>")

nnoremap("<C-q>", ":GhostStart<cr>")

-- nnoremap("<S-Down>", "<C-d>")
-- nnoremap("<S-Up>", "<C-u>")
vim.cmd("\
nnoremap <unique> <S-Down> <cmd>call smoothie#do(\"<C-D>\") <CR>\
vnoremap <unique> <S-Up> <cmd>call smoothie#do(\"<C-U>\") <CR>\
")

nnoremap("<C-j>", "<C-w><Down>")
nnoremap("<C-k>", "<C-w><Up>")
nnoremap("<C-l>", "<C-w><Right>")
nnoremap("<C-h>", "<C-w><Left>")
nnoremap("<C-Down>", "<C-w><Down>")
nnoremap("<C-Up>", "<C-w><Up>")
nnoremap("<C-Right>", "<C-w><Right>")
nnoremap("<C-Left>", "<C-w><Left>")

nnoremap("J", "<S-Down>")
nnoremap("K", "<S-Up>")

xnoremap('p', '"_dP', {noremap = true, silent = true})

xnoremap("x", '"_x')
nnoremap("m", "za")

-- map('x', 'p', '_dP', {noremap = true, silent = true})
-- map('x', 'P', '_dp', {noremap = true, silent = true})

-- nnoremap <Leader>v <c-v>
