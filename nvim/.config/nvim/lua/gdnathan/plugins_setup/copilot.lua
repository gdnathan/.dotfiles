vim.g.copilot_node_command = "/home/erudyx/.nvm/versions/node/v16.17.1/bin/node"

vim.cmd([[
    imap <silent><script><expr> <Right> copilot#Accept("\<Right>")
    let g:copilot_no_tab_map = v:true
]])
