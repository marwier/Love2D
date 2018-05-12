local Game = {}
Game.__index = Game

function Game:new()
  return setmetatable(
    {
      Name = "Game",
      game = {}
    }, self)
end

function Game:load()

end

function Game:update(dt)
  
end

function Game:draw()
  
end

return Game