local nnoremap = require'mapx'.nnoremap

-- local silent = require('mapx').silent
-- :nnoremap <silent> <leader>f m`zcVzCzo``

nnoremap("<leader>f", "m`zcVzCzo``")

nnoremap ("f<cr>" , ":Telescope<cr>")
nnoremap ("ff" ,":lua require('telescope.builtin').find_files()<cr>")
nnoremap ("fm" ,":lua require('telescope').extensions.media_files.media_files()<cr>")
nnoremap ("fg" ,":lua require('telescope.builtin').live_grep()<cr>")
nnoremap ("fh" ,":lua require('telescope.builtin').help_tags()<cr>")
