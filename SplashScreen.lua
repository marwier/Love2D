local SplashScreen = {}
SplashScreen.__index = SplashScreen

function SplashScreen:new()
  return setmetatable(
    {
      Name = "SplashScreen",
      splashScreen = {}
    }, self)
end

function SplashScreen:load()

end

function SplashScreen:update(dt)
  
end

function SplashScreen:draw()
  
end

return SplashScreen