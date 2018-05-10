local ObjectHandler = {}
ObjectHandler.__index = ObjectHandler

function ObjectHandler:new()
  return setmetatable(
    {
      objectList = {}
    }, self)
end

function ObjectHandler:updateObjects(dt)
  for _,o in ipairs(self.objectList) do
    o:update(dt)
  end
end

function ObjectHandler:drawObjects()
  for _,o in ipairs(self.objectList) do
    o:draw()
  end
end

function ObjectHandler:addObject(object)
  table.insert(self.objectList, object)
end

function ObjectHandler:removeObject(object)
  table.remove(self.objectList, object)
end

return ObjectHandler