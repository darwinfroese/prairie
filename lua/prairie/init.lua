--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

	-- colors --
	local bg = hsl(40, 100, 91)
	local bg_visual = hsl(40, 100, 85)

	local fg = hsl(25, 100, 5)
	local fg_light = hsl(25, 15, 50)

	local blue = hsl(205, 100, 34)
	local blue_bg = hsl(205, 100, 92)
	local green = hsl(109, 47, 34)
	local green_bg = hsl(109, 47, 85)
	local red = hsl(360, 100, 60)
	local red_bg = hsl(360, 100, 92)
	local yellow = hsl(55, 49, 46)
	local yellow_bg = hsl(55, 100, 81)
	local orange = hsl(14, 100, 63)
	local orange_bg = hsl(14, 87, 80)

	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		Normal({ fg = fg, bg = bg }), -- Normal text
		Visual({ bg = bg_visual }), -- Visual mode selection

		ColorColumn({ bg = bg_visual }), -- Columns set with 'colorcolumn'
		Conceal({ fg = fg_light, gui = "italic" }), -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ Normal }), -- Character under the cursor
		CurSearch({ bg = yellow_bg, gui = "italic" }), -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor({ Normal }), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM({ Normal }), -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ bg = bg_visual }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = bg_visual }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory({ fg = fg, gui = "bold italic" }), -- Directory names (and other special names in listings)
		DiffAdd({ fg = fg, bg = green, gui = "italic" }), -- Diff mode: Added line |diff.txt|
		DiffChange({ fg = fg, bg = blue, gui = "italic" }), -- Diff mode: Changed line |diff.txt|
		DiffDelete({ fg = fg, bg = red, gui = "italic" }), -- Diff mode: Deleted line |diff.txt|
		DiffText({ fg = fg, bg = blue, gui = "italic" }), -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer({ fg = fg_light, gui = "italic" }), -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor({ Cursor }), -- Cursor in a focused terminal
		TermCursorNC({ Cursor }), -- Cursor in an unfocused terminal
		ErrorMsg({ fg = red, gui = "italic" }), -- Error messages on the command line
		VertSplit({ fg = blue, bg = bg }), -- Column separating vertically split windows
		Folded({ bg = blue_bg }), -- Line used for closed folds
		FoldColumn({ Folded }), -- 'foldcolumn'
		SignColumn({}), -- Column where |signs| are displayed
		IncSearch({ bg = yellow_bg, gui = "italic" }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ IncSearch }), -- |:substitute| replacement text highlighting
		LineNr({ fg = fg, gui = "bold italic" }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove({ fg = fg_light, gui = "italic" }), -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow({ fg = fg_light, gui = "italic" }), -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr({ gui = "bold" }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold({}), -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign({}), -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen({ bg = fg_light }), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({ fg = green, gui = "italic" }), -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea({ ModeMsg }), -- Area for messages and cmdline
		MsgSeparator({ ModeMsg }), -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ ModeMsg }), -- |more-prompt|
		NonText({ fg = fg_light, gui = "italic" }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat({ Normal }), -- Normal text in floating windows.
		FloatBorder({ fg = blue, bg = bg }), -- Border of floating windows.
		FloatTitle({ Normal }), -- Title of floating windows.
		NormalNC({ Normal }), -- normal text in non-current windows
		Pmenu({ fg = Normal.fg, bg = Normal.bg.darken(5) }), -- Popup menu: Normal item.
		PmenuSel({ fg = Normal.fg, bg = bg_visual.darken(5) }), -- Popup menu: Selected item.
		PmenuKind({ Pmenu }), -- Popup menu: Normal item "kind"
		PmenuKindSel({ PmenuSel }), -- Popup menu: Selected item "kind"
		PmenuExtra({ Pmenu }), -- Popup menu: Normal item "extra text"
		PmenuExtraSel({ PmenuSel }), -- Popup menu: Selected item "extra text"
		PmenuSbar({ Normal }), -- Popup menu: Scrollbar.
		PmenuThumb({ Normal }), -- Popup menu: Thumb of the scrollbar.
		Question({ Normal, gui = "italic" }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ Question }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ Normal }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		SpecialKey({ fg = fg_light, gui = "italic" }), -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ fg = fg, bg = red_bg }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap({ fg = fg, bg = yellow_bg }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal({ fg = fg, bg = green_bg }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare({ fg = fg, bg = blue_bg }), -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine({ fg = fg, bg = bg_visual }), -- Status line of current window
		StatusLineNC({ StatusLine }), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine({ fg = fg, bg = bg_visual }), -- Tab pages line, not active tab page label
		TabLineFill({ fg = fg }), -- Tab pages line, where there are no labels
		TabLineSel({ fg = fg, gui = "italic bold" }), -- Tab pages line, active tab page label
		Title({ fg = fg, gui = "bold" }), -- Titles for output from ":set all", ":autocmd" etc.
		VisualNOS({ fg = fg }), -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = yellow, gui = "italic" }), -- Warning messages
		Whitespace({ SpecialKey }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator({ VertSplit }), -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu({ fg = fg, bg = bg_visual }), -- Current match in 'wildmenu' completion
		WinBar({ fg = fg, bg = bg_visual }), -- Window bar of current window
		WinBarNC({ WinBar }), -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.
		Comment({ fg = blue, gui = "italic" }), -- Any comment

		Constant({ fg = fg, gui = "bold" }), -- (*) Any constant
		String({ fg = green, gui = "italic" }), --   A string constant: "this is a string"
		Character({ fg = green, bg = String.bg, gui = String.gui }), --   A character constant: 'c', '\n'
		Number({ fg = fg }), --   A number constant: 234, 0xff
		Boolean({ fg = fg }), --   A boolean constant: TRUE, false
		Float({ fg = fg }), --   A floating point constant: 2.3e10

		Identifier({ fg = fg, gui = "italic" }), -- (*) Any variable name
		Function({ fg = fg, gui = "bold" }), --   Function name (also: methods for classes)

		Statement({ fg = fg, gui = "bold italic" }), -- (*) Any statement
		Conditional({ Statement }), --   if, then, else, endif, switch, etc.
		Repeat({ Statement }), --   for, do, while, etc.
		Label({ Statement }), --   case, default, etc.
		Operator({ fg = fg }), --   "sizeof", "+", "*", etc.
		Keyword({ Statement }), --   any other keyword
		Exception({ Statement }), --   try, catch, throw

		PreProc({ Statement }), -- (*) Generic Preprocessor
		Include({ Statement }), --   Preprocessor #include
		Define({ Statement }), --   Preprocessor #define
		Macro({ Statement }), --   Same as Define
		PreCondit({ Statement }), --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = fg, gui = "bold" }), -- (*) int, long, char, etc.
		StorageClass({ Type }), --   static, register, volatile, etc.
		Structure({ Type }), --   struct, union, enum, etc.
		Typedef({ Type }), --   A typedef

		Special({ fg = fg, gui = "bold" }), -- (*) Any special symbol
		SpecialChar({ Special }), --   Special character in a constant
		Tag({ Special }), --   You can use CTRL-] on this
		Delimiter({ Special }), --   Character that needs attention
		SpecialComment({ Comment }), --   Special things inside a comment (e.g. '\n')
		Debug({ Special }), --   Debugging statements

		Underlined({ fg = blue, gui = "underline" }), -- Text that stands out, HTML links
		Ignore({ fg = fg_light, gui = "italic" }), -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error({ fg = red, gui = "italic" }), -- Any erroneous construct
		Todo({ fg = blue, gui = "bold italic" }), -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		LspReferenceText({ fg = fg, bg = bg, gui = "italic" }), -- Used for highlighting "text" references
		LspReferenceRead({ LspReferenceText }), -- Used for highlighting "read" references
		LspReferenceWrite({ LspReferenceText }), -- Used for highlighting "write" references
		LspCodeLens({ LspReferenceText }), -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		LspCodeLensSeparator({ LspReferenceText }), -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter({ LspReferenceText }), -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError({ fg = fg, bg = red_bg }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn({ fg = fg, bg = yellow_bg }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo({ fg = fg, bg = green_bg }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint({ fg = fg, bg = blue_bg }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk({ fg = fg, bg = green_bg }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError({ DiagnosticError }), -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn({ DiagnosticWarn }), -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo({ DiagnosticInfo }), -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint({ DiagnosticHint }), -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk({ DiagnosticOk }), -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError({ fg = red, gui = "underline" }), -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn({ fg = yellow, gui = "underline" }), -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo({ fg = green, gui = "underline" }), -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint({ fg = blue, gui = "underline" }), -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk({ fg = blue, gui = "underline" }), -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError({ DiagnosticError }), -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn({ DiagnosticWarn }), -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo({ DiagnosticInfo }), -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint({ DiagnosticHint }), -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk({ DiagnosticOk }), -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError({ fg = red }), -- Used for "Error" signs in sign column.
		DiagnosticSignWarn({ fg = yellow }), -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo({ fg = green }), -- Used for "Info" signs in sign column.
		DiagnosticSignHint({ fg = blue }), -- Used for "Hint" signs in sign column.
		DiagnosticSignOk({ fg = green }), -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		sym("@text.literal")({ Comment }), -- Comment
		sym("@text.reference")({ Underlined }), -- Identifier
		sym("@text.title")({ Statement }), -- Title
		sym("@text.uri")({ Underlined }), -- Underlined
		sym("@text.underline")({ Underlined }), -- Underlined
		sym("@text.todo")({ Todo }), -- Todo
		sym("@comment")({ Comment }), -- Comment
		sym("@punctuation")({ fg = fg }), -- Delimiter
		sym("@constant")({ Constant }), -- Constant
		sym("@constant.builtin")({ Constant }), -- Special
		sym("@constant.macro")({ Macro }), -- Define
		sym("@define")({ Define }), -- Define
		sym("@macro")({ Macro }), -- Macro
		sym("@string")({ String }), -- String
		sym("@string.escape")({ String }), -- SpecialChar
		sym("@string.special")({ String }), -- SpecialChar
		sym("@character")({ Character }), -- Character
		sym("@character.special")({ Character }), -- SpecialChar
		sym("@number")({ Number }), -- Number
		sym("@boolean")({ Boolean }), -- Boolean
		sym("@float")({ Float }), -- Float
		sym("@function")({ Function }), -- Function
		sym("@function.builtin")({ Function }), -- Special
		sym("@function.macro")({ Macro }), -- Macro
		sym("@parameter")({ fg = fg }), -- Identifier
		sym("@method")({ Function }), -- Function
		sym("@field")({ fg = fg }), -- Identifier
		sym("@property")({ fg = fg, gui = "bold" }), -- Identifier
		sym("@constructor")({ fg = fg }), -- Special
		sym("@conditional")({ Conditional }), -- Conditional
		sym("@repeat")({ Repeat }), -- Repeat
		sym("@label")({ Label }), -- Label
		sym("@operator")({ Operator }), -- Operator
		sym("@keyword")({ Keyword }), -- Keyword
		sym("@exception")({ Exception }), -- Exception
		sym("@variable")({ fg = fg }), -- Identifier
		sym("@type")({ Type }), -- Type
		sym("@type.definition")({ Typedef }), -- Typedef
		sym("@storageclass")({ StorageClass }), -- StorageClass
		sym("@structure")({ Structure }), -- Structure
		sym("@namespace")({ Keyword }), -- Identifier
		sym("@include")({ Include }), -- Include
		sym("@preproc")({ PreProc }), -- PreProc
		sym("@debug")({ Debug }), -- Debug
		sym("@tag")({ Tag }), -- Tag
		sym("@lsp.type.namespace")({}),
		sym("@lsp.type.operator")({ fg = fg, gui = "bold" }),
		sym("@lsp.function.method.call")({ fg = fg }),
		sym("@module")({ fg = fg }),

		-- Typescript
		sym("tsxTagName")({ fg = fg }),
		sym("typescriptBraces")({ fg = fg }),

		-- LSP Markup
		sym("@markup.raw.block.markdown")({ fg = fg, bg = bg }),
		sym("@spell.markdown")({ fg = fg, bg = bg }),
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
