--detect if already executed or not--
local VIVALibrary = Instance.new("ScreenGui")
VIVALibrary.Name = "VIVA LuaV Engine"
VIVALibrary.Parent = game:GetService("CoreGui")

local detected = false

for _, obj in pairs(game:GetService("CoreGui")) do
  if obj:IsA("ScreenGui") and obj.Name = "VIVA LuaV Engine" then
    detected = true
  end
end
--actual loader--
if detected == true then
  game.StarterGui:SetCore("SendNotification",{
      Title = "VIVA Hub | Error";
      Text = "You have already executed VIVA Hub, please rejoin to reexecute.";
      Icon = "";
      Duration = 5;
  })
elseif detected == false then
  local games = {
    [286090429] = "Arsenal"
  }

  for pid, url in pairs(games) do
    if game.PlaceId == pid then
       loadstring(game:HttpGet("https://raw.githubusercontent.com/V-I-V-A/viva-hub-r2/main/Games/".. url ..".lua"))()
    end
  end
end
