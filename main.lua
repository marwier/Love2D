require("Singletones")
require("Square")

function love.load()
  
end

function love.draw()
  objectHandler:drawObjects()
  stateHandler:drawState()
end

function love.update(dt)
  objectHandler:updateObjects(dt)
  stateHandler:updateState(dt)
end
