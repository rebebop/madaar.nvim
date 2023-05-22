local syntax_group = {}

function syntax_group.highlights(colors, config)
	local highlights = {
		-- int, long, char, etc.
		Type = { fg = colors.primary2 },
		-- static, register, volatile, etc.
		StorageClass = { fg = colors.primary5 },
		-- struct, union, enum, etc.
		Structure = { fg = colors.primary3 },
		-- any constant
		Constant = { fg = colors.primary3 },
		-- any character constant: 'c', '\n'
		Character = { fg = colors.primary3 },
		-- a number constant: 5
		Number = { fg = colors.accent4 },
		-- a boolean constant: TRUE, false
		Boolean = { fg = colors.accent4 },
		-- a floating point constant: 2.3e10
		Float = { fg = colors.accent4 },
		-- any statement
		Statement = { fg = colors.primary0 },
		-- case, default, etc.
		Label = { fg = colors.primary4 },
		-- -- sizeof", "+", "*", etc.
		Operator = { fg = colors.accent2 },
		-- try, catch, throw
		Exception = { fg = colors.primary2 },
		-- generic Preprocessor
		PreProc = { fg = colors.primary4 },
		-- preprocessor #include
		Include = { fg = colors.primary4 },
		-- preprocessor #define
		Define = { fg = colors.primary4 },
		-- same as Define
		Macro = { fg = colors.primary4 },
		-- A typedef
		Typedef = { fg = colors.primary2 },
		-- preprocessor #if, #else, #endif, etc.
		PreCondit = { fg = colors.primary2 },
		-- any special symbol
		Special = { fg = colors.primary4 },
		-- special character in a constant
		SpecialChar = { fg = colors.primary3 },
		-- you can use CTRL-] on this
		Tag = { fg = colors.primary4 },
		-- -- character that needs attention like , or .
		Delimiter = { fg = colors.accent2 },
		-- special things inside a comment
		SpecialComment = { fg = colors.muted },
		-- debugging statements
		Debug = { fg = colors.muted },
		-- text that stands out, HTML links
		Underlined = { fg = colors.secondary0, style = "underline" },
		-- left blank, hidden
		Ignore = { fg = colors.muted, bg = colors.bg0, style = "bold" },
		-- any erroneous construct
		Error = { fg = colors.red3, bg = colors.none, style = "bold,underline" },
		-- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Todo = { fg = colors.yellow2, bg = colors.none, style = "bold,italic" },
		-- normal comment
		Comment = { fg = colors.primary4, style = config.styles.comments },
		-- normal if, then, else, endif, switch, etc.
		Conditional = { fg = colors.primary2, style = config.styles.keywords },
		-- normal for, do, while, etc.
		Keyword = { fg = colors.primary2, style = config.styles.keywords },
		-- normal any other keyword
		Repeat = { fg = colors.primary2, style = config.styles.keywords },
		-- normal function names
		Function = { fg = colors.secondary1, style = config.styles.functions },
		-- any variable name
		Identifier = { fg = colors.accent1, style = config.styles.variables },
		-- any string
		String = { fg = colors.secondary2, config.styles.strings },

		-- htmlLink = { fg = colors.green, style = "underline" },
		-- htmlArg = { fg = colors.blue },
		-- htmlTag = { fg = colors.blue },
		-- htmlEndTag = { fg = colors.blue },
		-- htmlTagN = { fg = colors.yellow },
		-- htmlTagName = { fg = colors.yellow },
		-- htmlSpecialTagName = { fg = colors.yellow },
		-- htmlH1 = { fg = colors.cyan, style = "bold" },
		-- htmlH2 = { fg = colors.red, style = "bold" },
		-- htmlH3 = { fg = colors.green, style = "bold" },
		-- htmlH4 = { fg = colors.yellow, style = "bold" },
		-- htmlH5 = { fg = colors.purple, style = "bold" },
		--
		-- cssAttributeSelector = { fg = colors.blue },
		-- cssSelectorOp = { fg = colors.dark_blue },
		-- cssTagName = { fg = colors.yellow },
		--
		-- markdownBlockquote = { fg = colors.light_gray },
		-- markdownBold = { fg = colors.purple, style = "bold" },
		-- markdownCode = { fg = colors.green },
		-- markdownCodeBlock = { fg = colors.green },
		-- markdownCodeDelimiter = { fg = colors.green },
		-- markdownH1 = { fg = colors.dark_blue, style = "bold" },
		-- markdownH2 = { fg = colors.blue, style = "bold" },
		-- markdownH3 = { fg = colors.cyan, style = "bold" },
		-- markdownH4 = { fg = colors.light_green },
		-- markdownH5 = { fg = colors.light_green },
		-- markdownH6 = { fg = colors.light_green },
		-- markdownH1Delimiter = { fg = colors.dark_blue },
		-- markdownH2Delimiter = { fg = colors.blue },
		-- markdownH3Delimiter = { fg = colors.cyan },
		-- markdownH4Delimiter = { fg = colors.light_green },
		-- markdownH5Delimiter = { fg = colors.light_green },
		-- markdownH6Delimiter = { fg = colors.light_green },
		-- markdownId = { fg = colors.yellow },
		-- markdownIdDeclaration = { fg = colors.purple },
		-- markdownIdDelimiter = { fg = colors.light_gray },
		-- markdownLinkDelimiter = { fg = colors.light_gray },
		-- markdownItalic = { fg = colors.yellow, style = "italic" },
		-- markdownLinkText = { fg = colors.purple },
		-- markdownOrderedListMarker = { fg = colors.red },
		-- markdownListMarker = { fg = colors.red },
		-- markdownRule = { fg = colors.purple },
		-- markdownUrl = { fg = colors.cyan, style = "underline" },
	}
	return highlights
end
return syntax_group
