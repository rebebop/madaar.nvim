-- Colorscheme name:        madaar.nvim
-- Description:             A Neovim theme for the hereafter
-- Author:                  rebebop
-- Website:                 https://github.com/rebebop/madaar.nvim

local config = require("madaar.config")
local util = require("madaar.util")

local madaar = {}

function madaar.setup(options)
	config.set_options(options)
	madaar.load(true)
end

function madaar.load(exec_autocmd)
	local colors = require("madaar.colors").load()

	util.load(colors, exec_autocmd)
end

return madaar
