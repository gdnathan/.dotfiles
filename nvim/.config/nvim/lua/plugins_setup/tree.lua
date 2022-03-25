local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

vim.cmd [[let g:nvim_tree_group_empty = 1]]

tree.setup {
    auto_close          = true,
    open_on_setup       = true,
    filters = {
        custom = {
            ".git",
            "node_modules",
            ".next"
        }
    }
}

local status2_ok, mapx = pcall(require, "mapx")
if not status2_ok then
  return
end

mapx.setup{ global = true }
map("<C-e>", ":NvimTreeToggle<Cr>")
