--[[ Powered by AEK | loader: combines i1.lua + i2.lua + i3.lua ]]
local base = "https://raw.githubusercontent.com/alexzerikov-sudo/magicalay-dist/main/"
local s = ""
for _, f in ipairs({"i1.lua", "i2.lua", "i3.lua"}) do
    s = s .. loadstring(game:HttpGet(base .. f))()
end
print("Powered by AEK")
loadstring(s)()
