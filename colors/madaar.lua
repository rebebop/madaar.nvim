-- Refresh cache for local debugging and development purposes
if vim.g.madaar_debug == true then
	package.loaded["madaar"] = nil
	package.loaded["madaar.util"] = nil
	package.loaded["madaar.colors"] = nil
	package.loaded["madaar.colors.dark"] = nil
	package.loaded["madaar.colors.light"] = nil
	package.loaded["madaar.theme"] = nil
end

require("madaar.config").set_options({ theme = "light" })
require("madaar").load(false)
