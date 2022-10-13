-- WoW Addon to mimic DataToColor Addon

-- Automatic Modulo function for Lua 5 and earlier
function Modulo(val, by)
    return val - math.floor(val / by) * by
end

local backdropInfo =
{
	bgFile = "Interface\\AddOns\\DataToColorMod\\white.tga",
 	insets = {top = 0, left = 0, bottom = 0, right = 0},
}
 
local frameP = CreateFrame("Frame", nil, nil, "BackdropTemplate")
frameP:SetFrameStrata("HIGH")
frameP:SetWidth(32) 
frameP:SetHeight(32) 
frameP:SetBackdrop(backdropInfo)

frameP:SetPoint("CENTER",350,-50)
frameP:Show()

local frames = {}
for i = 1, 4 do
    local f = CreateFrame("Frame", nil, nil, "BackdropTemplate")
    f:SetFrameStrata("HIGH")
    f:SetWidth(32) 
    f:SetHeight(32) 
    f:SetBackdrop(backdropInfo)

    f:SetPoint("CENTER",350+32*i,-50)
    f:Show()

    frames[i] = f
end

-- Display Party and Player Health as Colors
local p,f,col,col2, p1,p2,p3="player",MyL or CreateFrame("Frame","MyL",PlayerFrame) f.t=0 

f:SetScript("OnUpdate",

function(s,e) 
    f.t=f.t+e 
    if f.t>.025 then 
        f.t=0 
        
        p = UnitHealth("player") / (UnitHealthMax("player")+1)
        col1 = fixedDecimalToColor(p)
        frameP:SetBackdropColor(col1[1], col1[2], col1[3], 1)
        -- print(col1[1], col1[2], col1[3]) 
        
        p1 = UnitHealth("party1") / (UnitHealthMax("party1")+1) 
        p2 = UnitHealth("party2") / (UnitHealthMax("party2")+1) 
        p3 = UnitHealth("party3") / (UnitHealthMax("party3")+1) 
        p4 = UnitHealth("party4") / (UnitHealthMax("party4")+1) 

        col1 = fixedDecimalToColor(p1)
        col2 = fixedDecimalToColor(p2)
        col3 = fixedDecimalToColor(p3)
        col4 = fixedDecimalToColor(p4)

        frames[1]:SetBackdropColor(col1[1], col1[2], col1[3], 1)
        frames[2]:SetBackdropColor(col2[1], col2[2], col2[3], 1)
        frames[3]:SetBackdropColor(col3[1], col3[2], col3[3], 1)
        frames[4]:SetBackdropColor(col4[1], col4[2], col4[3], 1)

        -- print(col1[1], col1[2], col1[3], 1)
        -- print(col2[1], col2[2], col2[3], 1)
        -- print(col3[1], col3[2], col3[3], 1)
        -- print(col4[1], col4[2], col4[3], 1)
    end 
end)

-- DataToColor Stuff
function integerToColor(i)
    if i ~= math.floor(i) then
        error("The number passed to 'integerToColor' must be an integer")
    end
    
    if i > (256 * 256 * 256 - 1) then -- the biggest value to represent with 3 bytes of colour
        error("Integer too big to encode as color")
    end
    
    -- print(i)
    -- r,g,b are integers in range 0-255
    local b = Modulo(i, 256)
    i = math.floor(i / 256)
    local g = Modulo(i, 256)
    i = math.floor(i / 256)
    local r = Modulo(i, 256)
    
    -- tab = {r / 255, g / 255, b / 255}
    -- print(r, g, b)
    -- print(tab[1], tab[2], tab[3])

    -- then we turn them into 0-1 range
    return {r / 255, g / 255, b / 255}
end

-- This function is able to pass numbers in range 0 to 9.99999 (6 digits)
-- converting them to a 6-digit integer.
function fixedDecimalToColor(f)
    if f > 9.99999 then
        -- error("Number too big to be passed as a fixed-point decimal")
        return {0}
    elseif f < 0 then
        return {0}
    end

    -- "%f" denotes formatting a string as floating point decimal
    -- The number (.5 in this case) is used to denote the number of decimal places
    local f6 = tonumber(string.format("%.5f", 1))
    -- Makes number an integer so it can be encoded
    local i = math.floor(f * 100000)
    return integerToColor(i)
end


