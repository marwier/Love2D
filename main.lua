require("Singletones")
require("Square")

function love.load()

end

function love.draw()
  objectHandler:drawObjects()
end

function love.update(dt)
  objectHandler:updateObjects(dt)
end
