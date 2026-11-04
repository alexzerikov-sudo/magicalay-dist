local V="2754010772"
local function gf(u)
local ok,r=pcall(function() return game:HttpGet(u) end)
if ok and type(r)=="string" and #r>200 then return r end
end
local ts=tostring(os.time())
local rb="https://raw.githubusercontent.com/alexzerikov-sudo/magicalay-dist/main/"
local ok,v=pcall(function() return game:HttpGet(rb.."version.txt?t="..ts) end)
if not (ok and type(v)=="string") then
ok,v=pcall(function() return game:HttpGet("https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/version.txt?t="..ts) end)
end
if ok and type(v)=="string" then
local nv=v:match("%d+")
if nv and nv~=V and not getgenv().__MA_UP then
getgenv().__MA_UP=true
local s=gf(rb.."MagicAlayPoweredByAEKz.lua?t="..ts) or gf("https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/MagicAlayPoweredByAEKz.lua?t="..ts)
if s then return loadstring(s)() end
elseif nv and nv==V then
getgenv().__MA_UP=nil
end
end
getgenv().__QMBSDyAoHXsTJz = "cab0077792219d4aa11cd068109703ca"
local u={"https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/e7HJVcoCQT.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/xBUACIMhNh.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/iz1ywXZsmx.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/TH039dofNT.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/mvAfMChdFy.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/zzvPBcABiT.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/XM0C4oF2PQ.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/RcwmGop4fI.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/Vdgol30Us9.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/1txpUs9tAw.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/unZ1x4T2zD.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/z4JfvfJLxO.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/V36xwJ5cX7.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/DZPqlFOMjR.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/dfI9hTxAfc.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/Eu8bgjvg2h.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/eoXD4819EZ.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/BebuNcJv01.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/n1tBvpzNAr.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/o4YoIKtqMH.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/ViljL8qWAf.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/iVKCYjGfxY.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/YaTsBIs222.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/z61VMSWVUP.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/HvW2T9YRTV.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/BE9fjV6bbL.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/3ugxw5isXw.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/ffy9CIqHG4.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/PhIJ5eyNVI.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/cxgvFbNOZN.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/bjYFZr1NIZ.lua","https://cdn.jsdelivr.net/gh/alexzerikov-sudo/magicalay-dist@main/yERIPumhDk.lua"}
local function gp(u)
local m={u,string.gsub(u,"cdn.jsdelivr.net","fastly.jsdelivr.net"),string.gsub(string.gsub(u,"cdn.jsdelivr.net/gh/","raw.githubusercontent.com/"),"@main/","/main/")}
for j=1,#m do
for k=1,2 do
local ok,r=pcall(function() return game:HttpGet(m[j]) end)
if ok and type(r)=="string" and #r>0 then
local ok2,x=pcall(function() return loadstring(r)() end)
if ok2 and type(x)=="string" then return x end
end
task.wait(0.15)
end
end
end
local s=""
for i=1,#u do
local p=gp(u[i])
if not p then error("MagicAlay: load failed "..i) end
s=s..p
end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local t={}
for i=1,#s,4 do
local c1=s:sub(i,i)local c2=s:sub(i+1,i+1)local c3=s:sub(i+2,i+2)local c4=s:sub(i+3,i+3)
local n=(b:find(c1,1,true)-1)*262144+(b:find(c2,1,true)-1)*4096
if c3~="=" and c3~="" then n=n+(b:find(c3,1,true)-1)*64 end
if c4~="=" and c4~="" then n=n+(b:find(c4,1,true)-1) end
t[#t+1]=string.char(math.floor(n/65536))
if c3~="=" and c3~="" then t[#t+1]=string.char(math.floor(n/256)%256) end
if c4~="=" and c4~="" then t[#t+1]=string.char(n%256) end
end
loadstring(table.concat(t))()
