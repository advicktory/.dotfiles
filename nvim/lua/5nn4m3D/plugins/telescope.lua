local t_scope, telescope = pcall(require, "telescope")
if not t_scope then
    return
end

local a_setup, actions = pcall(require, "telescope.actions")
if not a_setup then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            } -- Custom Keymapsing for Telescope
        }
    }
})

telescope.load_extension("fzf")
