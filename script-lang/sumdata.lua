#!/usr/bin/lua
-- sumdata
-- time ./script-lang/sumdata.lua data.log
-- time luajit ./script-lang/sumdata.lua data.log

local o, ot, c, ct, l = 0, 0, 0, 0, 1

for line in io.lines(arg[1]) do
    for n in string.gmatch(line, "%S+") do
        if l == 5 then
            ot = n
        elseif l == 6 then
            ct = n
        end
        l = l + 1
    end
    l, o, c = 1, o + ot, c + ct
end
io.write(string.format("Original Size: %.0f kb\nCompressed Size: %.0f kb\n",o/1000,c/1000))

