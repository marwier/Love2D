require("src/tools/Singletones")

local Game = {}
Game.__index = Game

function Game:new()
  if Game._instance then
    return Game._instance
  end
  
  Game._instance = setmetatable(
    {
      name = "Game",
      game = {}
    }, self)

  return Game._instance
end

function Game:init()
  
end

function Game:update(dt)

end

function Game:draw()
  
end

return Game