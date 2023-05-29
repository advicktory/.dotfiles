l_nightfly = require("lualine.themes.nightfly")

local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

l_nightfly.normal.a.bg = new_colors.blue
l_nightfly.insert.a.bg = new_colors.green
l_nightfly.visual.a.bg = new_colors.violet
l_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black,
	},
}
