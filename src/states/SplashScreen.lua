require("src/tools/Singletones")

local SplashScreen = {}
SplashScreen.__index = SplashScreen

function SplashScreen:new()
  if SplashScreen._instance then
    return SplashScreen._instance
  end
  
  SplashScreen._instance = setmetatable(
    {
      name = "SplashScreen",
      splashScreen = {}
    }, self)

  return SplashScreen._instance
end

function SplashScreen:init()

end

function SplashScreen:update(dt)

end

function SplashScreen:draw()

end

return SplashScreen