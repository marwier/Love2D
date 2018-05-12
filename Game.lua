local Game = {}
Game.__index = Game

function Game:new()
  if Game._instance then
    return Game._instance
  end
  
  Game._instance = setmetatable(
    {
      Name = "Game",
      game = {}
    }, self)

  return Game._instance
end

function Game:update(dt)
  
end

function Game:draw()
  love.graphics.print("Game loaded!", 10, 250)
end

return Game