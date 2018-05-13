require("src/tools/Singletones")
require("src/objects/Square")

splashScreen = require("src/states/SplashScreen")
menu = require("src/states/Menu")
game = require("src/states/Game")

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
