local StateHandler = {}
StateHandler.__index = StateHandler

function StateHandler:new()
  if StateHandler._instance then
    return StateHandler._instance
  end
  
  StateHandler._instance = setmetatable(
    {
      stateList = {}
    }, self)
  
  return StateHandler._instance
end

function StateHandler:addState(state)
  table.insert(self.stateList, state)
end

function StateHandler:getState()
  return self.currentState
end

function StateHandler:setState(newState)
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
  self:getState():update(dt)
end

function StateHandler:drawState()
  self:getState():draw()
end

return StateHandler