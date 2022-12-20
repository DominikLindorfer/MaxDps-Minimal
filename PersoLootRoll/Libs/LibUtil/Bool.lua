local MAJOR, MINOR = "LibUtil", 1
local Lib, minor = LibStub and LibStub(MAJOR, true)
if not Lib or next(Lib.Bool) or (minor or 0) > MINOR then return end

---@type Util
local Util = Lib
---@class Bool
local Self = Util.Bool

-------------------------------------------------------
--                      Boolean                      --
-------------------------------------------------------

function Self.New(v)
    return not not v
end

-- True if an uneven # of inputs are true
function Self.XOR(...)
    local n = 0
    for _,v in Util.Each(...) do if v then n = n + 1 end end
    return n % 2 == 1
end
