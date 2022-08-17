local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

tree.setup {
    open_on_setup       = true,
    renderer = {
        group_empty = true
    },
    filters = {
        custom = {
            ".git",
            "node_modules",
            ".next"
        },
        exclude = {
            ".git*"
        }
    },
    view = {
        mappings = {
            list = {
                {key = "<C-e>", action = ""},
                {key = "e", action = "cd"}
            }
        }
    }
}

vim.api.nvim_exec([[
    nnoremap <C-e> :NvimTreeToggle<CR>
]], false)
--
-- local status2_ok, mapx = pcall(require, "mapx")
-- if not status2_ok then
--   return
-- end
--
-- mapx.setup{ global = true }
-- map("<C-e>", ":NvimTreeToggle<Cr>")
