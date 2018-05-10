Square = require("Square")
ObjectHandler = require("ObjectHandler")

function love.load()
  objectHandler = ObjectHandler:new()
end

function love.draw()
  objectHandler:drawObjects()
end

function love.update(dt)
  objectHandler:updateObjects(dt)
end

function love.mousemoved(x, y)
  local square = Square:new(x,y)
  objectHandler:addObject(square)
end