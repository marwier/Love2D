local Square = {}
Square.__index = Square

local delegate = {
  getColor = math.random
}

local const = {
  fallingSpeed = 1,
  rectangleSize = 20,
  drawMode = "fill"
}

function Square:new(x, y)
  local attributes = {}
 
  attributes.x = x
  attributes.y = y
  attributes.velocity = 0
 
  attributes.colors = {
    red = delegate.getColor(),
    green = delegate.getColor(),
    blue = delegate.getColor()
  }
 
  self.attributes = attributes
 
  return self
end

function Square:draw()
  love.graphics.setColor(self.attributes.colors.red, self.attributes.colors.green, self.attributes.colors.blue)
  love.graphics.rectangle(const.drawMode, self.attributes.x, self.attributes.y, const.rectangleSize, const.rectangleSize)
end

function Square:update(dt)
  self.attributes.velocity = self.attributes.velocity + dt * const.fallingSpeed
  self.attributes.y = self.attributes.y + self.attributes.velocity
end

return Square