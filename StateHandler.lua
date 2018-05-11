local StateHandler = {}
StateHandler.__index = StateHandler

local const = {
  initialState = "Menu"
}

function StateHandler:new()
  if StateHandler._instance then
    return StateHandler._instance
  end
  
  StateHandler._instance = setmetatable(
    {
      stateList = 
      {
        "SpashScreen",
        "MainMenu",
        "Game",
        "Pause"
      }
    }, self)

  StateHandler.currentState = const.initialState
  
  return StateHandler._instance
end

function StateHandler:getCurrentState()
  return self.currentState
end

function StateHandler:changeState(newState)
  if self:stateExists(newState) then
    self.currentState = newState
  end
end  

function StateHandler:stateExists(state)
  for _,o in pairs(self.stateList) do
    if o == state then
      return true
    end
  end
  return false
end

-- experimental code
--[[function love.mousepressed(x, y, button)
  if button == 2 then
    local states = StateHandler:new()
    states:changeState("Game")
  end
end

function love.keypressed(key)
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