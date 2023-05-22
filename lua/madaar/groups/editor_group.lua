local editor_group = {}

function editor_group.highlights(colors, config)
	local highlights = {
		-- normal text and background color for floating windows
		NormalFloat = { fg = colors.primary0, bg = colors.bg1 },
		-- floating window border
		FloatBorder = { fg = colors.primary1, bg = colors.bg1 },
		-- used for the columns set with 'colorcolumn'
		ColorColumn = { fg = colors.accent_5 },
		-- placeholder characters substituted for concealed text (see 'conceallevel')
		Conceal = { bg = colors.accent_5 },
		-- the character under the cursor
		Cursor = { fg = colors.accent_5, style = "reverse" },
		-- like Cursor, but used when in IME mode
		CursorIM = { fg = colors.accent_5, style = "reverse" },
		-- -- directory names (and other special names in listings)
		Directory = { fg = colors.accent_5 },
		-- diff mode: Added line
		-- DiffAdd = { fg = colors.none, bg = colors.diff_add_bg },
		-- -- diff mode: Changed line
		-- DiffChange = { fg = colors.none, bg = colors.diff_change_bg },
		-- -- diff mode: Deleted line
		-- DiffDelete = { fg = colors.none, bg = colors.diff_remove_bg },
		-- -- diff mode: Changed text within a changed line
		-- DiffText = { fg = colors.none, bg = colors.diff_text_bg },
		-- -- error messages
		-- ErrorMsg = { fg = colors.error },
		-- -- line used for closed folds
		-- Folded = { fg = colors.dark_blue, bg = colors.none, style = "italic" },
		-- -- 'foldcolumn'
		-- FoldColumn = { fg = colors.light_gray },
		-- -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- IncSearch = { fg = colors.yellow, bg = colors.selection, style = "bold,underline" },
		-- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNr = { fg = colors.primary4 },
		-- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineNr = { fg = colors.primary1 },
		-- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		MatchParen = { fg = colors.accent2, style = "bold" },
		-- 'showmode' message (e.g., "-- INSERT -- ")
		-- ModeMsg = { fg = colors.blue, style = "bold" },
		-- -- |more-prompt|
		-- MoreMsg = { fg = colors.blue, style = "bold" },
		-- -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist
		-- -- in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
		-- -- See also |hl-EndOfBuffer|.
		NonText = { fg = colors.muted },
		-- -- normal item |hl-Pmenu|
		-- Pmenu = { fg = colors.fg, bg = colors.float },
		-- -- selected item |hl-PmenuSel|
		-- PmenuSel = { bg = colors.selection },
		-- -- scrollbar |hl-PmenuSbar|
		-- PmenuSbar = { bg = colors.float },
		-- -- thumb of the scrollbar  |hl-PmenuThumb|
		-- PmenuThumb = { bg = colors.fg },
		-- -- |hit-enter| prompt and yes/no questions
		-- Question = { fg = colors.green },
		-- -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- QuickFixLine = { bg = colors.float, style = "bold,italic" },
		-- -- Line numbers for quickfix lists
		-- qfLineNr = { fg = colors.purple },
		-- -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		-- Search = { fg = colors.blue, bg = colors.selection, style = "bold" },
		-- -- Unprintable characters: text displayed differently from what it really is.
		-- -- But not 'listchars' whitespace. |hl-Whitespace|
		-- SpecialKey = { fg = colors.dark_blue },
		-- -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellBad = { fg = colors.none, bg = colors.none, style = "italic,undercurl", sp = colors.green },
		-- -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellCap = { fg = colors.none, bg = colors.none, style = "italic,undercurl", sp = colors.yellow },
		-- -- Word that is recognized by the spellchecker as one that is used in another region.
		-- -- |spell| Combined with the highlighting used otherwise.
		-- SpellLocal = { fg = colors.none, bg = colors.none, style = "italic,undercurl", sp = colors.cyan },
		-- -- Word that is recognized by the spellchecker as one that is hardly ever used.
		-- -- |spell| Combined with the highlighting used otherwise.
		-- SpellRare = { fg = colors.none, bg = colors.none, style = "italic,undercurl", sp = colors.purple },
		-- -- status line of current window
		-- StatusLine = { fg = colors.fg, bg = colors.active },
		-- -- status lines of not-current windows Note: if this is equal to "StatusLine"
		-- -- Vim will use "^^^" in the status line of the current window.
		-- StatusLineNC = { fg = colors.light_gray, bg = colors.active },
		-- -- status line of current terminal window
		-- StatusLineTerm = { fg = colors.fg, bg = colors.active },
		-- -- status lines of not-current terminal windows Note: if this is equal to "StatusLine"
		-- -- Vim will use "^^^" in the status line of the current window.
		-- StatusLineTermNC = { fg = colors.light_gray, bg = colors.active },
		-- -- tab pages line, where there are no labels
		-- TabLineFill = { fg = colors.light_gray, bg = colors.active },
		-- -- tab pages line, active tab page label
		-- TablineSel = { fg = colors.cyan, bg = colors.bg },
		-- Tabline = { fg = colors.light_gray, bg = colors.active },
		-- -- titles for output from ":set all", ":autocmd" etc.
		-- Title = { fg = colors.green, bg = colors.none, style = "bold" },
		-- -- Visual mode selection
		-- Visual = { fg = colors.none, bg = colors.highlight },
		-- -- Visual mode selection when vim is "Not Owning the Selection".
		-- VisualNOS = { fg = colors.none, bg = colors.highlight },
		-- -- warning messages
		-- WarningMsg = { fg = colors.warn },
		-- -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Whitespace = { fg = colors.gray },
		-- -- current match in 'wildmenu' completion
		-- WildMenu = { fg = colors.yellow, bg = colors.none, style = "bold" },
		-- -- window bar of current window
		-- WinBar = { fg = colors.fg, bg = colors.bg },
		-- -- window bar of not-current windows
		-- WinBarNC = { fg = colors.light_gray, bg = colors.bg },
		-- -- Screen-column at the cursor, when 'cursorcolumn' is set.
		-- CursorColumn = { fg = colors.none, bg = colors.float },
		-- -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorLine = { fg = colors.none, bg = colors.bg1 },
		-- NormalMode = { fg = colors.cyan, bg = colors.none, style = "reverse" },
		-- -- Normal mode message in the cmdline
		-- -- Insert mode message in the cmdline
		-- InsertMode = { fg = colors.green, bg = colors.none, style = "reverse" },
		-- -- Replace mode message in the cmdline
		-- ReplacelMode = { fg = colors.red, bg = colors.none, style = "reverse" },
		-- -- Visual mode message in the cmdline
		-- VisualMode = { fg = colors.purple, bg = colors.none, style = "reverse" },
		-- -- Command mode message in the cmdline
		-- CommandMode = { fg = colors.yellow, bg = colors.none, style = "reverse" },
		-- Warnings = { fg = colors.warn },
		--
		-- healthError = { fg = colors.error },
		-- healthSuccess = { fg = colors.green },
		-- healthWarning = { fg = colors.warn },
		--
		-- -- Dashboard
		-- DashboardShortCut = { fg = colors.cyan },
		-- DashboardHeader = { fg = colors.blue },
		-- DashboardCenter = { fg = colors.purple },
		-- DashboardFooter = { fg = colors.green, style = "italic" },
		--
		-- normal text and background color
		Normal = { fg = colors.primary0, bg = colors.bg0 },
		NormalNC = { bg = colors.bg0 },
		SignColumn = { fg = colors.primary0, bg = colors.bg0 },

		-- the column separating vertically split windows
		-- VertSplit = { fg = colors.bg },
		--
		-- EndOfBuffer = { fg = colors.gray },
	}
	return highlights
end

return editor_group
