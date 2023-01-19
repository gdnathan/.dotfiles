local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

lualine.setup {
    -- extensions = { 'toggleterm' },
    sections = {
        lualine_c = {
            ...,
            'lsp_progress'
        }
    }
}
