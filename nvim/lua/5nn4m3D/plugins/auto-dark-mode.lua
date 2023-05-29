-- Auto switcher
local auto_dark_mode_ok, auto_dark_mode = pcall(require, "auto-dark-mode")
if not auto_dark_mode_ok then
	print("auto-dark-mode could not load.")
end

-- Lualine
local status, lualine = pcall(require, "lualine")
if not status then
	print("Could not load lualine.")
end

-- lualine themes
package.path = package.path .. ";../core/?.lua"
local l_nightfly = require("l_nightfly")
local l_everforest = require("l_everforest")

auto_dark_mode.setup({

	update_interval = 1000,

	set_dark_mode = function()
		--vim.api.nvim_set_option("background", "light")
		vim.cmd("colorscheme nightfly")
		lualine.setup({
			options = {
				theme = l_nightfly,
			},
		})
	end,

	set_light_mode = function()
		-- vim.api.nvim_set_option("background", "light")
		-- vim.api.nvim_set_option("everforest_background", "soft")
		vim.cmd("colorscheme everforest")
		lualine.setup({
			options = {
				theme = l_everforest,
			},
		})
	end,
})
auto_dark_mode.init()
