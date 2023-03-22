-- local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
-- if not status_ok then
--   return
-- end


local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
    virtual_text = false,
    signs = {
        active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
}

vim.diagnostic.config(config)


vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
})

-- -- Use an on_attach function to only map the following keys
-- -- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    --   -- Enable completion triggered by <c-x><c-o>
    --   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    --   -- Mappings.
    local opts = { noremap = true, silent = true }

    --   -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.keymap.set('n', '<enter>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.keymap.set('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.keymap.set('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.keymap.set('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.keymap.set('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.keymap.set('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.keymap.set('n', '<space><enter>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.keymap.set('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    vim.keymap.set('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    vim.keymap.set('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    vim.keymap.set('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    vim.keymap.set('n', '<C-Space>', function() vim.lsp.buf.format { async = true } end, opts)

end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-16" }

require('lspconfig')['rust_analyzer'].setup {
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            diagnostics = {
                disabled = { "unresolved-proc-macro" }
            }
        }
    },
    capabilities = capabilities
}
require('lspconfig')['tsserver'].setup {
    on_attach = on_attach,
    settings = {
        javascript = {
            format = {
                indentSize = 2
            }
        },
        typescript = {
            format = {
                indentSize = 2,
                semicolons = "insert"
            }
        },
        completions = {
            completeFunctionCalls = true
        },
    },
    capabilities = capabilities
}
require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    settings = {
        clangd = {
            arguments = {
                "--offset-encoding=utf-16",
                "-std=c++17"
            }
        }
    },
    capabilities = capabilities
}

-- require('lspconfig')['hls'].setup{
--     on_attach = on_attach,
-- }
require('lspconfig')['dockerls'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require('lspconfig')['marksman'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
-- require('lspconfig')['sumneko_lua'].setup {
--     on_attach = on_attach,
--     capabilities = capabilities
-- }
-- require('lspconfig')['solang'].setup{
--     on_attach = on_attach,
-- }
require('lspconfig')['solidity'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
-- require('lspconfig')['solc'].setup{
--     on_attach = on_attach,
-- }
require('lspconfig')['vimls'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require('lspconfig')['grammarly'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require('lspconfig')['pylsp'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
-- require('lspconfig')['ruby-lsp'].setup{
--     on_attach = on_attach,
--     capabilities = capabilities
-- }
