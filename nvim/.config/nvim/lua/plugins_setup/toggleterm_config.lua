local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup{
    open_mapping = [[<C-z>]],
    direction = "float",
    shell = "fish",
    border = "curved",
    vim.api.nvim_set_keymap("t", "<esc>", [[<C-\><C-n>]], {noremap = true, silent = true}), -- esc to go to normal mode
}

