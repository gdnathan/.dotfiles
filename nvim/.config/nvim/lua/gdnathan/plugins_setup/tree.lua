local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
    print("failed to load nvim-tree")
  return
end

-- tree.api.open()

-- tree.setup {
--     -- open_on_setup       = true,
--     renderer = {
--         group_empty = true
--     },
--     filters = {
--         custom = {
--             ".git",
--             "node_modules",
--             ".next"
--         },
--         exclude = {
--             ".git*"
--         }
--     },
--     view = {
--         mappings = {
--             list = {
--                 {key = "<C-e>", action = ""},
--                 {key = "e", action = "cd"}
--             }
--         }
--     }
-- }

-- vim.api.nvim_exec([[
--   nnoremap <C-e> :NvimTreeToggle<CR>
-- ]], false)

-- require("nvim-web-devicons").set_default_icon('', '#FFff00')

--
-- This function has been generated from your
--   view.mappings.list
--   view.mappings.custom_only
--   remove_keymaps
--
-- You should add this function to your configuration and set on_attach = on_attach in the nvim-tree setup call.
--
-- Although care was taken to ensure correctness and completeness, your review is required.
--
-- Please check for the following issues in auto generated content:
--   "Mappings removed" is as you expect
--   "Mappings migrated" are correct
--
-- Please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for assistance in migrating.
--

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- applies default mapping
    api.config.mappings.default_on_attach(bufnr)

-- custom mapping

  vim.keymap.set('n', '<C-e>', '', { buffer = bufnr })
  vim.keymap.del('n', '<C-e>', { buffer = bufnr })


  vim.keymap.set('n', 'e', api.tree.change_root_to_node, opts('CD'))

end

require("nvim-tree").setup({
    on_attach = on_attach,
    -- ...
})

local status2_ok, mapx = pcall(require, "mapx")
if not status2_ok then
  return
end

local nnoremap = require'mapx'.nnoremap
nnoremap("<C-e>", ":NvimTreeToggle<Cr>")

