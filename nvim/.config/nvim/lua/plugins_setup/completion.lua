local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
  return
end
local status2_ok, tabnine = pcall(require, "cmp_tabnine.config")
if not status2_ok then
  return
end

cmp.setup({
snippet = {
  expand = function(args)
    -- For `vsnip` user.
    vim.fn["vsnip#anonymous"](args.body)

    -- For `luasnip` user.
    -- require('luasnip').lsp_expand(args.body)

    -- For `ultisnips` user.
    -- vim.fn["UltiSnips#Anon"](args.body)
  end,
},
mapping = {
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  -- ['<C-e>'] = cmp.mapping.close(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
},


sources = {
  -- For vsnip user.
  { name = 'vsnip' },
  { name = 'nvim_lsp' },
  { name = 'buffer' },


  -- For luasnip user.
  -- { name = 'luasnip' },

  -- For ultisnips user.
  -- { name = 'ultisnips' },

  -- to use tabnine
  { name = 'cmp_tabnine' },
}
})

tabnine:setup({
    max_lines = 1000;
    max_num_results = 20;
    sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
})
