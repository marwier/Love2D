splashScreen = require("SplashScreen")
menu = require("Menu")
game = require("Game")

local StateHandler = {}
StateHandler.__index = StateHandler

function StateHandler:new()
  if StateHandler._instance then
    return StateHandler._instance
  end
  
  StateHandler._instance = setmetatable(
    {
      stateList = 
      {
        splashScreen:new(),
        menu:new(),
        game:new()
      }
    }, self)

  StateHandler.currentState = self._instance.stateList[1]
  StateHandler.currentStateName = self.currentState.Name
  
  return StateHandler._instance
end

function StateHandler:getCurrentState()
  return self.currentState
end

function StateHandler:getCurrentStateName()
  return self.currentStateName
end

function StateHandler:changeState(newState)
  exists, index = self:stateExists(newState)
  
  if exists then
    self.currentState = self.stateList[index]
    self.currentStateName = self.stateList[index].Name
  end
end  

function StateHandler:stateExists(state)
  for i,o in ipairs(self.stateList) do
    if o.Name == state then
      return true, i
    end
  end
  return false, nil
end

function StateHandler:updateState(dt)
  self:getCurrentState().update(dt)
end

function StateHandler:drawState()
  self:getCurrentState().draw()
end

-- experimental code
function love.mousepressed(x, y, button)
  if button == 2 then
    local states = StateHandler:new()
    states:changeState("Game")
  end
end

--[[function love.keypressed(key)
 local sh = StateHandler:new()
 
 if key == "p" then
   if sh:getCurrentState() == "Pause" then
     sh:changeState("Game")
    else
      sh:changeState("Pause")
    end
  end
end]]

return StateHandler