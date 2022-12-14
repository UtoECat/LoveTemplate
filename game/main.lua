require "extra/locale"
local var = require "extra/settings"
local font_title = love.graphics.newFont(30) 
local font_default = love.graphics.newFont(15) 

var.heloo = "custom option"
var.number = 100

function love.load()
	reloadSettings()
end

function love.update(dt)

end

function love.draw()
	love.graphics.reset()
	love.graphics.setFont(font_default)
	local t = table.concat({love.graphics.getRendererInfo()}, " ")
	love.graphics.print(t, 0, 0, 0, 1, 1)
	love.graphics.print(var.heloo, 0, 20, 0, 1, 1)
	love.graphics.setFont(font_title)
	love.graphics.print("Just A Test", 0, 50, 0, 1, 1)
end
