local ObjectHandler = {}
ObjectHandler.__index = ObjectHandler

function ObjectHandler:new()
  if ObjectHandler._instance then
    return ObjectHandler._instance
  end
  
  ObjectHandler._instance = setmetatable(
    {
      objectList = {}
    }, self)

  return ObjectHandler._instance
end

function ObjectHandler:updateObjects(dt)
  for i = #self.objectList, 1, -1 do
    self.objectList[i]:update(i, dt)
  end
end

function ObjectHandler:drawObjects()
  for i = #self.objectList, 1, -1 do
    self.objectList[i]:draw(i)
  end
end

function ObjectHandler:addObject(object)
  table.insert(self.objectList, object)
end

function ObjectHandler:removeObject(index)
  table.remove(self.objectList, index)
end

function ObjectHandler:removeAllObjects()
  self.objectList = {}
end

return ObjectHandler