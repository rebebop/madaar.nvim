local light_colors = require("madaar.colors.light")
local dark_colors = require("madaar.colors.dark")

local function load()
	local theme = require("madaar.config").options.theme

	-- if style is set, it takes priority
	-- otherwise, use vim.o.background
	if not theme then
		theme = vim.o.background
	end

	local base_colors = theme == "light" and light_colors or dark_colors
	return vim.tbl_deep_extend("force", base_colors, require("madaar.config").options.custom_colors)
end

return { load = load }
