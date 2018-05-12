local Menu = {}
Menu.__index = Menu

function Menu:new()
  return setmetatable(
    {
      Name = "Menu",
      menu = {}
    }, self)
end

function Menu:load()

end

function Menu:update(dt)
  
end

function Menu:draw()
  
end

return Menu