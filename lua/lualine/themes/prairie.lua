local colors = {
	magenta = "#ff44c1",
	red = "#ff3336",
	yellow = "#afa53c",
	green = "#3d7f2e",
	blue = "#0065ad",
	white = "#a7a7a7",

	background = "#ffe5b3",
}

return {
	normal = {
		a = { fg = colors.blue, bg = colors.background },
	},
	insert = {
		a = { fg = colors.green, bg = colors.background },
	},
	visual = {
		a = { fg = colors.yellow, bg = colors.background },
	},
	replace = {
		a = { fg = colors.red, bg = colors.background },
	},
	command = {
		a = { fg = colors.magenta, bg = colors.background },
	},
	inactive = {
		a = { fg = colors.white, bg = colors.background },
	},
}
