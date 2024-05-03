local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
    return
end

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)

        end,
    },
    mapping = {
        ['<C-Down>'] = cmp.mapping.scroll_docs(4),
        ['<C-Up>'] = cmp.mapping.scroll_docs(-4),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },


    sources = {
        -- For vsnip user.
        { name = "crates" },
        { name = 'vsnip' },
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },

    }
})

