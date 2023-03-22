local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>fd', builtin.diagnostic, {})

telescope.load_extension('media_files')
telescope.load_extension('hoogle')
