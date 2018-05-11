require("Singletones")

local Square = {}
Square.__index = Square

local delegate = {
  getColor = math.random
}

local const = {
  fallingSpeed = 10,
  rectangleSize = 5,
  drawMode = "fill"
}

function Square:new(x, y)
  local square = {}
  local attributes = {}

  attributes.x = x
  attributes.y = y
  attributes.velocity = 0

  attributes.colors = {
    red = delegate.getColor(),
    green = delegate.getColor(),
    blue = delegate.getColor()
  }

  square.attributes = attributes
  setmetatable(square, Square)
  return square
end

function Square:draw(index)
  love.graphics.setColor(self.attributes.colors.red, self.attributes.colors.green, self.attributes.colors.blue)
  love.graphics.rectangle(const.drawMode, self.attributes.x, self.attributes.y, const.rectangleSize, const.rectangleSize)
end

function Square:update(index, dt)
  self.attributes.velocity = self.attributes.velocity + dt * const.fallingSpeed
  self.attributes.y = self.attributes.y + self.attributes.velocity
  
  if self.attributes.y > love.graphics.getHeight() then
    objectHandler:removeObject(index)
  end
end

function love.mousemoved(x, y)
  local square = Square:new(x,y)
  objectHandler:addObject(square)
end

return Square