require("Singletones")

local Menu = {}
Menu.__index = Menu

function Menu:new()
  if Menu._instance then
    return Menu._instance
  end
  
  Menu._instance = setmetatable(
    {
      Name = "Menu",
      menu = {}
    }, self)

  return Menu._instance
end

function Menu:update(dt)
  
end

function Menu:draw()
  
end

return Menu