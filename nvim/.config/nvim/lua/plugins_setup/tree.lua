require('nvim-tree').setup {
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

require'mapx'.setup{ global = true }

map("<C-e>", ":NvimTreeToggle<Cr>")

local list = {
  { key = "$",                            action = "toggle_ignored" },
}
