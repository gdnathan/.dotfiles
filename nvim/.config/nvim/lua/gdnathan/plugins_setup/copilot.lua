vim.g.copilot_node_command = "/home/erudyx/.nvm/versions/node/v20.6.1/bin/node"

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', '<Right>', 'copilot#Accept("<Right>")', {silent = true, expr = true})
