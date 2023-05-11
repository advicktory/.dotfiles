local setup, nt = pcall(require, "nvim-tree")
if not setup then
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]]) -- Change the NvimTree Arrow Color

nt.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "", -- arrow when folder is closed
                    arrow_open = "", -- arrow when folder is open
                },
            },
        },
    }, -- Changing the NvimTree Arrows
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
})
