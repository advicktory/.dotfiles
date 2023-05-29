local status, lualine = pcall(require, "lualine")
if not status then
	print("Could not load lualine.")
end

package.path = package.path .. ";/Users/unnamed/.dotfiles/nvim/lua/5nn4m3D/core/?.lua"
local l_nightfly = require("l_nightfly") -- This is the l_nightfly file in 5nn4m3D/core/
--local l_nightfly = require("lualine.themes.nightfly")

--local new_colors = {
--	blue = "#65D1FF",
--	green = "#3EFFDC",
--	violet = "#FF61EF",
--	yellow = "#FFDA7B",
--	black = "#000000",
--}

--l_nightfly.normal.a.bg = new_colors.blue
--l_nightfly.insert.a.bg = new_colors.green
--l_nightfly.visual.a.bg = new_colors.violet
--l_nightfly.command = {
--	a = {
--		gui = "bold",
--		bg = new_colors.yellow,
--		fg = new_colors.black,
--	},
--}

lualine.setup({
	options = {
		theme = l_nightfly,
	},
})
