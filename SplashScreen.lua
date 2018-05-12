local SplashScreen = {}
SplashScreen.__index = SplashScreen

function SplashScreen:new()
  if SplashScreen._instance then
    return SplashScreen._instance
  end
  
  SplashScreen._instance = setmetatable(
    {
      Name = "SplashScreen",
      splashScreen = {}
    }, self)

  return SplashScreen._instance
end

function SplashScreen:update(dt)
  
end

function SplashScreen:draw()
  love.graphics.print("Loading game", 10, 250)
end

return SplashScreen