local nnoremap = require'mapx'.nnoremap
local map = vim.api.nvim_set_keymap
-- local silent = require('mapx').silent
-- :nnoremap <silent> <leader>f m`zcVzCzo``

nnoremap("<leader>f", "m`zcVzCzo``")
-- nnoremap("<leader>v", '<c-v>') -- in case ctrl V is mapped by windows terminal already

nnoremap ("f<cr>" , ":Telescope<cr>")
nnoremap ("ff" ,":lua require('telescope.builtin').find_files()<cr>")
-- nnoremap ("fm" ,":lua require('telescope').extensions.media_files.media_files()<cr>")
nnoremap ("fg" ,":lua require('telescope.builtin').live_grep()<cr>")
-- nnoremap ("fh" ,":lua require('telescope.builtin').help_tags()<cr>")

-- map('x', 'p', '_dP', {noremap = true, silent = true})
-- map('x', 'P', '_dp', {noremap = true, silent = true})

-- nnoremap <Leader>v <c-v>
