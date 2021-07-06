--thing--
if getgenv().LUNARHUBLOADED then return; end
pcall(function()
    getgenv.LUNARHUBLOADED = true;
end)
--actual loader--
local games = {
    [286090429] = "arsenal"
}

for pid, url in pairs(games) do
    if game.PlaceId == pid then
        print("dababy")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/L-U-N-A-R/Lunar-Hub/main/games/".. url ..".lua"))()
    end
end
