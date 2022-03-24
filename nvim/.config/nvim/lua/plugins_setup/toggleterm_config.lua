
require("toggleterm").setup{
    open_mapping = [[<C-m>]],
    direction = "float",
    shell = "fish",
    border = "curved",
    vim.api.nvim_set_keymap("t", "<esc>", [[<C-\><C-n>]], {noremap = true, silent = true}), -- esc to go to normal mode
}

