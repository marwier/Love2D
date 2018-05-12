require("Singletones")
require("Square")
splashScreen = require("SplashScreen")
menu = require("Menu")
game = require("Game")

function love.load()
  stateHandler:addState(splashScreen:new())
  stateHandler:addState(game:new())
  stateHandler:addState(menu:new())
  
  stateHandler:setState("SplashScreen")
end

function love.draw()
  objectHandler:drawObjects()
  stateHandler:drawState()
end

function love.update(dt)
  objectHandler:updateObjects(dt)
  stateHandler:updateState(dt)
end
