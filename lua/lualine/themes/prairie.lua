local colors = {
	magenta = "#ff44c1",
	red = "#ff3336",
	yellow = "#afa53c",
	green = "#3d7f2e",
	blue = "#0065ad",
	white = "#a7a7a7",

	background = "#ffe5b3",
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand("%:p:h")
		local gitdir = vim.fn.finddir(".git", filepath .. ";")
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
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
	sections = {
		lualine_c = {
			{ "filesize", cond = conditions.buffer_not_empty },
		},
	},
}
-- -- Inserts a component in lualine_c at left section
-- local function ins_left(component)
-- 	table.insert(config.sections.lualine_c, component)
-- end
--
-- -- Inserts a component in lualine_x at right section
-- local function ins_right(component)
-- 	table.insert(config.sections.lualine_x, component)
-- end
--
-- ins_left({
-- 	-- filesize component
-- 	"filesize",
-- 	cond = conditions.buffer_not_empty,
-- })
--
-- ins_left({
-- 	"filename",
-- 	cond = conditions.buffer_not_empty,
-- 	color = { fg = colors.blue },
-- })
--
-- ins_left({
-- 	"diagnostics",
-- 	sources = { "nvim_diagnostic" },
-- 	symbols = { error = " ", warn = " ", info = " " },
-- 	diagnostics_color = {
-- 		error = { fg = colors.red },
-- 		warn = { fg = colors.yellow },
-- 		info = { fg = colors.blue },
-- 	},
-- })
--
-- -- Insert mid section. You can make any number of sections in neovim :)
-- -- for lualine it's any number greater then 2
-- ins_left({
-- 	function()
-- 		return "%="
-- 	end,
-- })
--
-- -- Add components to right sections
-- ins_right({
-- 	"o:encoding", -- option component same as &encoding in viml
-- 	fmt = string.lower,
-- 	cond = conditions.hide_in_width,
-- 	color = { fg = colors.green },
-- })
--
-- ins_right({
-- 	"fileformat",
-- 	fmt = string.lower,
-- 	icons_enabled = true,
-- 	color = { fg = colors.green },
-- })
--
-- ins_right({
-- 	"branch",
-- 	icon = "",
-- 	color = { fg = colors.blue },
-- })
--
-- ins_right({
-- 	"diff",
-- 	-- Is it me or the symbol for modified us really weird
-- 	symbols = { added = " ", modified = "󰝤 ", removed = " " },
-- 	diff_color = {
-- 		added = { fg = colors.green },
-- 		modified = { fg = colors.blue },
-- 		removed = { fg = colors.red },
-- 	},
-- 	cond = conditions.hide_in_width,
-- 	padding = { right = 1 },
-- })
