require("Singletones")

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

end

return SplashScreen