-- required modules
require "extra/locale"
require "extra/funcs"
local var = require "extra/settings"
local D = love.graphics

-- constants
local font_title = D.newFont(30) 
local font_default = D.newFont(15) 
local license = readfile("license.txt")

-- options 
var.heloo = "custom option"
var.number = 100

function love.load()
	reloadSettings()
end

function love.update(dt)

end

function love.draw()
	D.reset()
	D.setFont(font_default)
	local t = table.concat({D.getRendererInfo()}, " ")
	D.print(t, 0, 0, 0, 1, 1)
	D.print(var.heloo, 0, 20, 0, 1, 1)
	D.setFont(font_title)
	D.print("Just A Test", 0, 50, 0, 1, 1)
	D.setFont(font_default)
	D.print(license or "?", 0, 90, 0, 1, 1)
end
