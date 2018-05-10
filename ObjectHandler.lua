local ObjectHandler = {}
ObjectHandler.__index = ObjectHandler

function ObjectHandler:new()
  return setmetatable(
    {
      objectList = {}
    }, self)
end

function ObjectHandler:updateObjects(dt)
  for i = table.getn(self.objectList), 1, -1 do
    self.objectList[i]:update(dt)
    if self.objectList[i].attributes.y > love.graphics.getHeight() then
      self:removeObject(i)
    end
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

function ObjectHandler:removeObject(index)
  table.remove(self.objectList, index)
end

return ObjectHandler